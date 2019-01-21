package com.niit.eshopbackend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

public class ProductTest {
	@Autowired
	static ProductDao productDao;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	    
	    context.scan("com.niit");
	    context.refresh();
	    
	    productDao=(ProductDao) context.getBean("productDao");
	}
	

	@Test
	public void test() {
		Product product=new Product();
		product.setProName("S6 Edge");
		product.setProDesc("SmartPhone");
		
		assertTrue("Problem in adding the product",productDao.addProduct(product));
	}
	@Test
	public void deleteProductTest()
	{
		Product product=productDao.getProduct(69);
		
		assertTrue("Problem in deleting product",productDao.deleteProduct(product));
	}
	@Test
	public void updateProductTest()
	{
		Product product=productDao.getProduct(70);
		product.setProDesc("Western Wear");
		
		assertTrue("Problem in updating product",productDao.updateProduct(product));
	}
}