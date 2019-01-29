package com.niit.controller;

import java.util.LinkedHashMap;




import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller
public class ProductController {
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
    ProductDao productDao;

	
	@RequestMapping("/product")
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		
		
		List<Product> listProducts=productDao.listProducts();
		m.addAttribute("productList",listProducts);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("pageinfo","Manage Product");
		return "Product";
	}
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,Model m)
	{
	    productDao.addProduct(product);
		
		Product product1=new Product();
	    m.addAttribute(product1);
	    m.addAttribute("pageinfo","Manage Product");
	    m.addAttribute("categoryList",this.getCategories());
		
		List<Product> listProducts=productDao.listProducts();
		m.addAttribute("productList", listProducts);
		
	
		return "Product";
	}
	
	@RequestMapping(value="/deleteProduct/{proId}")
	public String deleteProduct(Model m,@PathVariable("proId")int proId)
	{
		Product product=productDao.getProduct(proId);
		productDao.deleteProduct(product);
		
		Product product1=new Product();
		m.addAttribute(product1);
			
		m.addAttribute("pageinfo","Manage product");
		m.addAttribute("categoryList",this.getCategories());
		
		List<Product> listProducts=productDao.listProducts();
		m.addAttribute("productList", listProducts);

		return "Product";
		}
	
	@RequestMapping(value="/UpdateProduct",method=RequestMethod.POST)
    public String updateProduct(@ModelAttribute ("product")Product product,Model m)
	
	{
	    productDao.updateProduct(product);
	    
		Product product1=new Product();
		m.addAttribute(product1);
			
		m.addAttribute("pageinfo","Manage product");
		m.addAttribute("categoryList",this.getCategories());
		
		List<Product> listProducts=productDao.listProducts();
		m.addAttribute("productList", listProducts);

		return "UpdateProduct";
	}
		@RequestMapping(value="/editProduct/{proId}")
		public String editProduct(Model m,@PathVariable("proId")int proId)
		{
			Product product=productDao.getProduct(proId);
			
			m.addAttribute("product",product);
			m.addAttribute("pageinfo","Manage Product");
			
			m.addAttribute("categoryList",this.getCategories());
		
			return "UpdateProduct";
		}
		
		public LinkedHashMap<Integer,String> getCategories()
	    {
		List<Category> listCategories=categoryDao.listCategories();
	     LinkedHashMap<Integer,String> categoryList=new LinkedHashMap<Integer,String>();
	     
	     for(Category category:listCategories)
	      {
	        categoryList.put(category.getCategoryID(),category.getCategoryName());	
	          }
	    return categoryList;
	}	
     
}


