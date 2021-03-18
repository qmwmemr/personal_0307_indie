package com.kjh.music.hp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hp")
public class HpController {

	@GetMapping("/home")
	public String home() {
		System.out.println("/hp/home/index get");
		return "/hp/home/index";
	}
	
	@GetMapping("/about")
	public String about() {
		System.out.println("/hp/about/about get");
		return "/hp/about/about";
	}
	
	@GetMapping("/blog")
	public String blog() {
		System.out.println("/hp/blog/blog get");
		return "/hp/blog/blog";
	}
	
	@GetMapping("/blog-details")
	public String blogDetails() {
		System.out.println("/hp/blog/blog-details get");
		return "/hp/blog/blog-details";
	}
	
	@GetMapping("/contact")
	public String contact() {
		System.out.println("/hp/contact/contact get");
		return "/hp/contact/contact";
	}
	
	@GetMapping("/product_details")
	public String productDatails() {
		System.out.println("/hp/latest/product_details get");
		return "/hp/latest/product_details";
	}
	
	@GetMapping("/checkout")
	public String checkout() {
		System.out.println("/hp/pages/checkout get");
		return "/hp/pages/checkout";
	}
	
	@GetMapping("/elements")
	public String elements() {
		System.out.println("/hp/pages/elements get");
		return "/hp/pages/elements";
	}
	
	@GetMapping("/confirmation")
	public String confirmation() {
		System.out.println("/hp/pages/confirmation get");
		return "/hp/pages/confirmation";
	}
	
	@GetMapping("/login")
	public String login() {
		System.out.println("/hp/pages/login get");
		return "/hp/pages/login";
	}
	
	@GetMapping("/shop")
	public String shop() {
		System.out.println("/hp/shop/shop get");
		return "/hp/shop/shop";
	}
	
	@GetMapping("/insert")
	public String insert() {
		System.out.println("/hp/pages/insert get");
		return "/hp/pages/insert";
	}
	
	@GetMapping("/signUp")
	public String signUp() {
		System.out.println("/hp/pages/signUp get");
		return "hp/pages/signUp";
	}
	
	@GetMapping("/myPage")
	public String myPage() {
		System.out.println("/hp/pages/myPage get");
		return "hp/pages/myPage";
	}
	
	
}
