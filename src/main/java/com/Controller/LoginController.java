package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Model.Uservo;
import com.Service.ServiceInterface;

@Controller
public class LoginController 
{
	
	@Autowired
	ServiceInterface si;
	
	@RequestMapping("/")
	public String login()
	{
		System.out.println("In login page");
		
		return "index";
	}
	
	@RequestMapping("register")
	public String register()
	{
		return "register";
	}
  @RequestMapping("/reg")
  public ModelAndView addUser(Uservo uservo) { 
	 int n=si.addUser(uservo); 
	 if(n>0) { 
		 
		 return new ModelAndView("index","msg","Registered Successfully"); 
		 
	 } else {
		 
		 return new ModelAndView("register","msg","Registration Failed"); 
		 
	 } 
	 }
  
 @RequestMapping("/log") public ModelAndView checkLogin(String username,String
  password,Model model) { List<Uservo> list=si.checkLogin(username, password);
  if(list!=null) { model.addAttribute("data",list); return new
  ModelAndView("success","msg","Login Successfully"); } else { return new
  ModelAndView("index","msg","Login Failed"); } }
 
  @RequestMapping("/edit") public ModelAndView edit(int uid) { List<Uservo>
  list=si.edit(uid); return new ModelAndView("edit","data",list); }
  
  @RequestMapping("/delete") public ModelAndView delete(int uid,Model model) {
  List<Uservo> list=si.delete(uid);
  model.addAttribute("msg","Delete Successfully"); return new
  ModelAndView("success","data",list); }
  
  @RequestMapping("/update") public ModelAndView update(Uservo uservo,Model model)
  { List<Uservo> list=si.update(uservo);
  model.addAttribute("msg","Delete Successfully"); return new
  ModelAndView("success","data",list); } 
  
}