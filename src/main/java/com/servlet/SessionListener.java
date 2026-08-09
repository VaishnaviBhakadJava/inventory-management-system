package com.servlet;


import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener
{
	public void sessionCreated(HttpSessionEvent sce)
	{
		System.out.println("Session object created ");
		System.out.println("Appliction Deployed in: "+sce.getSession());
	}
	
	public void sessionDistroyed(HttpSessionEvent sce)
	{
		System.out.println("Session object Distroyed ");
	}
	
	public void attributeAdded(HttpSessionAttributeListener scae)
	{
		System.out.println("Attribute added on servlet Session object.");
		System.out.println("Attribute Name : "+scae.getClass().getName());
	}
	
	public void attributeRemoved(HttpSessionAttributeListener scae)
	{
		System.out.println("Attribute is removed from servlet Session !!");
	}
}