package com.niit.eshopbackend;

import static org.junit.Assert.*;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Supplier;

public class SupplierTest {

	@Autowired
	static SupplierDao supplierDao;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	    
	    context.scan("com.niit");
	    context.refresh();
	    
	    supplierDao=(SupplierDao) context.getBean("supplierDao");
	}
	
	@Test
	public void Test()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierName("Techno Distributors");
		supplier.setSupplierDesc("Technical parts");
		
		assertTrue("Problem in adding the supplier",supplierDao.addSupplier(supplier));
	}
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=supplierDao.getSupplier(1);
		
		assertTrue("Problem in deleting Supplier",supplierDao.deleteSupplier(supplier));
	}
	@Test
	public void updateSupplierTest()
	{
		Supplier supplier=supplierDao.getSupplier(2);
		supplier.setSupplierDesc("Western Wear");
		
		assertTrue("Problem in updating Supplier",supplierDao.updateSupplier(supplier));
	}
}

