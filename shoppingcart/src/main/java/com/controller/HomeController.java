package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDAO;
import com.model.User;


@Controller //CONTROLLER ANNA 4 CLASS 
public class HomeController 
{
	@Autowired
	private UserDAO userDAO;
	   
	@RequestMapping("/")	//REQ-MAPPING ANNA 4 METHOD 
		public String index()
		{
			return "index";
		}
	@RequestMapping("index")	//REQ-MAPPING ANNA 4 METHOD 
	public String indexhome()
	{
		return "index";
	}
	@RequestMapping("/register")
	public String register()
	{
		return "register";
	}
	
	@ModelAttribute("user")
	public User loginUser()
	{
		return new User();
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String insertUser(@Validated @ModelAttribute("user")User user,BindingResult result)
	{
			if(result.hasErrors())
		{
			return "register";
		}
		userDAO.saveUser(user);
		return "loginPage";
	}
	@RequestMapping("/loginPage")
	public ModelAndView loginHere() {
		ModelAndView mv = new ModelAndView("loginPage");
				return mv;
	}@RequestMapping(value = "/fail2login", method = RequestMethod.GET)
	public ModelAndView loginError() {
		
		return new ModelAndView("loginPage", "error", true);
	}
	@RequestMapping(value = "validate", method = RequestMethod.GET)
	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
			if (request.isUserInRole("ROLE_ADMIN")) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String name = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", name);
			ModelAndView modelAndView = new ModelAndView("adminPage");
			return modelAndView;
		} else {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String name = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", name);
			ModelAndView modelAndView = new ModelAndView("manageProducts");
			return modelAndView;
		}
	}
	@RequestMapping("/logout")
	public ModelAndView logOutPage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}


}	
