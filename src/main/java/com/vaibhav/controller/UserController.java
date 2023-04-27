package com.vaibhav.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vaibhav.model.User;
import com.vaibhav.repo.UserRepository;



@Controller
public class UserController 
{
	@Autowired
	UserRepository urepo;
	
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}
	
	@RequestMapping("/signup")
	public String getSignup()
	{
		return "signup";
	}
	
	@RequestMapping("/login")
	public String getLogin()
	{
		return "login";
	}
	
	@PostMapping("/addUser")
	public String addUser(@Validated User user,BindingResult result,@RequestParam("user_email") String user_email,   Model mv)
	{
		
		if(result.hasErrors()) {
			
			System.out.println(result);
			return "signup";
		}
		
		ModelAndView mv1=new ModelAndView("success");
		List<User> list=urepo.findByEMAIL(user_email);
		
		if(list.size()!=0)
		{
		mv1.addObject("message", "Oops!  There is already a user registered with the email provided.");
		
		}
		else
		{
		urepo.save(user);
		mv1.addObject("message",user);
		}
		
		return "success";
	}
	
	@GetMapping("/dummy")
	public String dummy(@RequestParam("user_email") String user_email , Model model)
	{ 
		List<User> user1=urepo.findByEMAIL(user_email);
		System.out.println(user1);
		
		User user =user1.get(0);
		System.out.println(user);
		model.addAttribute("message", user);
		return "dummy";
	}
	
	@PostMapping("/login")
	public ModelAndView login_user(@RequestParam("username") String username,@RequestParam("password") String password,
			HttpSession session,ModelMap modelMap)
	{
		ModelAndView mv= new ModelAndView();
	User auser=urepo.findByUsernamePassword(username, password);
	
	if(auser!=null)
	{
		String uname=auser.getUser_email();
		String upass=auser.getUser_pass();
	
		if(username.equalsIgnoreCase(uname) && password.equalsIgnoreCase(upass)) 
		{
			session.setAttribute("username",username);
			List<User> user =urepo.findByEMAIL(username);
			System.out.println(user);
			User u= user.get(0);
			System.out.println(u);
			
			mv.addObject("message",u);
			mv.setViewName("dummy");
			return mv;
		}
		else 
		{
			modelMap.put("error", "Invalid Account");
			mv.setViewName("login");
			return mv;
		}
	}
	else
	{
		modelMap.put("error", "Invalid Account");
		mv.setViewName("login");
		return mv;
	}
	
	}
	
	@GetMapping(value = "/logout")
	public String logout_user(HttpSession session)
	{
		session.removeAttribute("username");
		session.invalidate();
		return "redirect:/login";
	}
	
	
}
