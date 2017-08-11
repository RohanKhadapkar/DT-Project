package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.service.ProductService;

@Controller
public class HomeController
{
	
	@Autowired
	private ProductService productService;
	HomeController()
	{
		System.out.println("Creating Instance of HomeController");
	}
	
	@RequestMapping("/home")
	public String homepage(HttpSession session)
	{
		session.setAttribute("categories",productService.getAllCategories());
		return "home";
	}

	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
}
