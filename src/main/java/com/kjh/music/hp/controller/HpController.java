package com.kjh.music.hp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kjh.music.board.model.BoardVO;
import com.kjh.music.hp.service.IHpservice;
import com.kjh.music.user.model.UserVO;

@Controller
@RequestMapping("/hp")
public class HpController {

	@Autowired
	private IHpservice service;
	
	@GetMapping("/home")
	public String home(Model model) {
		System.out.println("/hp/home/index get");
		
		List<BoardVO> top3 = service.selectTop3();
		System.out.println("top3 : " + top3);
		model.addAttribute("top3",top3);
		
		
		List<BoardVO> top10 = service.selectTop10();
		System.out.println("top10 : " + top10);
		model.addAttribute("top10",top10);
		
		
		
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
	
	@GetMapping("/chart")
	public String shop(Model model) {
		System.out.println("/hp/chart/chart get");
		
		model.addAttribute("chart",service.chart());
		
		return "/hp/chart/chart";
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
	public String myPage(HttpSession session, Model model) {
		System.out.println("/hp/pages/myPage get");
		
		UserVO vo = (UserVO) session.getAttribute("login");
		System.out.println("로그인정보: "+vo);

		model.addAttribute("c",service.myArticleCount(vo.getUser_id()));
		System.out.println("게시글 갯수: " + service.myArticleCount(vo.getUser_id()) );
		model.addAttribute("l",service.myArticles(vo.getUser_id()));
		System.out.println("목록: "+service.myArticles(vo.getUser_id()));
		model.addAttribute("b",service.myBestArticle(vo.getUser_id()));
		System.out.println("베스트: " +service.myBestArticle(vo.getUser_id()));
		
		return "hp/pages/myPage";
	}
	
	
}
