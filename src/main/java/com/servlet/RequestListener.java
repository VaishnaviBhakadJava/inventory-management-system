package com.servlet;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

//@WebListener
public class RequestListener implements ServletRequestListener
{
	public void requestInitialized(ServletRequestEvent sce)
	{
		System.out.println("Request object created ");
		System.out.println("Appliction Deployed in: "+sce.getServletRequest());
	}
	
	public void contextDistroyed(ServletRequestEvent sce)
	{
		System.out.println("Request object Distroyed ");
	}
	
	public void attributeAdded(ServletRequestAttributeEvent scae)
	{
		System.out.println("Attribute added on servlet Request object.");
		System.out.println("Attribute Name : "+scae.getName());
	}
	
	public void attributeRemoved(ServletRequestAttributeEvent scae)
	{
		System.out.println("Attribute is removed from servlet Request !!");
	}
}
