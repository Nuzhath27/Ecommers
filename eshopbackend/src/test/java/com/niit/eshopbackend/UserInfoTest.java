package com.niit.eshopbackend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDao;
import com.niit.model.UserInfo;

public class UserInfoTest {
	
	static UserDao userDao;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	    
	    context.scan("com.niit");
	    context.refresh();
	    
	    userDao=(UserDao)context.getBean("userDao");
	}
	@Ignore
	@Test
	public void registerUserTest() 
	{
		UserInfo user=new UserInfo();
		
		user.setUsername("Lucky");
		user.setPassword("P147");
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		user.setCustomerName("Lucky Singh");
		user.setCustomerAddr("Delhi");
		
		assertTrue("Problem in adding User:",userDao.registerUser(user));
	}
}

