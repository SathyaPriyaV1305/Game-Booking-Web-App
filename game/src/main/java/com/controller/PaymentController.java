package com.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.AdminMemInfo;
import com.model.MembershipDetails;
import com.model.RegisterDetails;
import com.service.MembershipService;
import com.service.RegisterService;

@Controller
@RequestMapping("/payment")
public class PaymentController{
	

	@Autowired
	MembershipService membershipService;
	
	@Autowired
	RegisterService registerService;
	
	@RequestMapping("/new/{id}/{username}")
	public String paymentPage(@PathVariable("id") Long id,Model model,@PathVariable("username") String username) {
		AdminMemInfo memInfo = membershipService.getAdminMemDetailtById(id);
		model.addAttribute(username);
		model.addAttribute("memInfo", memInfo);
		return "mem-payment-page";
	}
	
	@RequestMapping("/complete/{id}/{username}")
	public String paymentComplete(Model model,@PathVariable("id") Long id,@PathVariable("username") String username) {
		
		MembershipDetails membershipDetails = new MembershipDetails();
		RegisterDetails userDetail = registerService.findUserByUsername(username);
		AdminMemInfo memInfo = membershipService.getAdminMemDetailtById(id);
		
		membershipDetails.setUsername(userDetail.getUsername());
		membershipDetails.setMobileNo(userDetail.getMobno());
		membershipDetails.setMail(userDetail.getMail());
		membershipDetails.setMembershipDetails(memInfo.getMembershipName());
		membershipDetails.setMembershipDuration(memInfo.getDuration());
		membershipDetails.setMembershipPrice(memInfo.getPrice());
		membershipService.saveUserMemDetail(membershipDetails);
		model.addAttribute("memDetail",membershipDetails);
		System.out.println("membership details entered");
		return "membership-bill-page";
	}
	
	@RequestMapping("/memdetails/{username}")
	public String userMemDeatils(@PathVariable("username")String username,Model model) {
		MembershipDetails membershipDetails = membershipService.findUserByUsername(username);
		model.addAttribute("usermem", membershipDetails);
		model.addAttribute("username",username);
		return "user-memdetails";
	}

}