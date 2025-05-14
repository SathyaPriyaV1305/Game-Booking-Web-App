package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.AdminMemInfo;
import com.model.MembershipDetails;
import com.service.MembershipService;

@Controller
@RequestMapping("/membership")
public class MembershipController {
	
	@Autowired
	MembershipService membershipService;
	
	@RequestMapping("/new")
	public String memberAdd(Model model) {
		AdminMemInfo adminMemInfo = new AdminMemInfo();
		model.addAttribute("memInfo", adminMemInfo);
		return "admin-membership-insert";
	}
	
	@RequestMapping("/save")
	public String saveUser(@ModelAttribute("memInfo")AdminMemInfo adminMemInfo, Model model) {
		membershipService.saveAdminMemDetail(adminMemInfo);
		List<AdminMemInfo> adminMemList = membershipService.getAllAdminMemDetails();
		model.addAttribute("adminMemInfoList",adminMemList);
	    return "admin-membership-view";
	    }
	@RequestMapping("/list")
	public String listUser(Model model) {
		List<AdminMemInfo> adminMemList = membershipService.getAllAdminMemDetails();
		model.addAttribute("adminMemInfoList",adminMemList);
		return "admin-membership-view";
	}
	
	@RequestMapping("/edit/{id}")
    public String editAdminMem(@PathVariable("id") Long id, Model model) {
		AdminMemInfo adminMemInfo = membershipService.getAdminMemDetailtById(id);
        model.addAttribute("memInfo", adminMemInfo);
        return "admin-membership-edit";
	}
	
	 @RequestMapping("/update/{id}")
	    public String updateMembershipInfo(@PathVariable("id") Long id,
	                             @ModelAttribute("memInfo") AdminMemInfo adminMemInfo) {
		 	membershipService.saveAdminMemDetail(adminMemInfo);
	      	return "redirect:/membership/list";
	    }
	
	@RequestMapping("/delete/{id}")
    public String deleteMemInfo(@PathVariable("id") Long id) {
		membershipService.deleteAdminMem(id);
    	return "redirect:/membership/list";
    }
	
	@RequestMapping("/userlist/{username}")
	public String userMemInfo(Model model,@PathVariable("username")String username) {
		List<AdminMemInfo> adminMemList = membershipService.getAllAdminMemDetails();
		model.addAttribute(username);
		model.addAttribute("adminMemInfoList",adminMemList);
		return "user-membership";
	}
	
	@RequestMapping("/customermembers")
	public String listCustomer(Model model) {
		List<MembershipDetails> membershipDetails = membershipService.getAllUserMemDetails();
		model.addAttribute("usermem",membershipDetails);
		return "admin-customer-members";
	}
	
}