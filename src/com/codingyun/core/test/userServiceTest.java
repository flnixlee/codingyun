package com.codingyun.core.test;

import static org.junit.Assert.fail;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class userServiceTest {
	
	public static ClassPathXmlApplicationContext ctx = 
			new ClassPathXmlApplicationContext(new String[] {"META-INF/jdbc-context.xml","META-INF/springMvc3-servlet.xml"});

	@Test
	public void testGetUserByUserId() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetUserByUserName() {
		fail("Not yet implemented");
	}

	@Test
	public void testSaveUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateUser() {
		fail("Not yet implemented");
	}

}
