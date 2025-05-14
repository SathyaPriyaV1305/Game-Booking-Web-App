package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.MembershipDetails;
import com.model.RegisterDetails;
import com.service.MembershipService;
import com.service.RegisterService;

@Controller
@RequestMapping("/games")
public class FunController{

    @Autowired
    private RegisterService registerService;
    
    @Autowired
    MembershipService membershipService;
    
    @RequestMapping("/new")
    public String msg(Model model) {
        RegisterDetails registerDetails = new RegisterDetails();
        model.addAttribute("reg", registerDetails);
        return "register";
    }

    @RequestMapping("/landpage")
    public String landpage(RegisterDetails registerDetails, @RequestParam("password") String password,@RequestParam("username")String userName,Model model) {
        System.out.println("saved successfully");
        registerDetails.setPassword(password);
        registerService.saveRegDetail(registerDetails);
        RegisterDetails regidetail = registerService.findUserByUsername(userName);
        model.addAttribute("user", regidetail);
        return "landpage";
    }

    @RequestMapping("/landpage2")
    public String userlandpage(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
        RegisterDetails user = registerService.login(username, password);
        if (user != null) {
            model.addAttribute("user", user);
            MembershipDetails membershipDetail = membershipService.findUserByUsername(username);
            if(membershipDetail != null) {
            	String member = "You are a Membership in our Game Center";
            	model.addAttribute("member",member);
            }
            return "landpage"; // Login successful
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login"; // Redirect back to login on failure
        }
    }
    
    @RequestMapping("/landpage3/{username}")
    public String homepage(Model model,@PathVariable("username") String username) {
    	MembershipDetails membershipDetail = membershipService.findUserByUsername(username);
        if(membershipDetail != null) {
        	String member = "You are a Membership in our Game Center";
        	model.addAttribute("member",member);
        }
        return "landpage";
    }
    
    @RequestMapping("/log")
    public String login() {
        return "login";
    }
    
}