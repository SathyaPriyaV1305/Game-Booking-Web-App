package com.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.AdminRegDetails;
import com.service.AdminRegService;

@Controller
@RequestMapping("/admindetails")
public class AdminController {
	
	@Autowired
	private AdminRegService adminRegService;
	
	@RequestMapping("/admin")
	public String adminReg(Model model) {
		AdminRegDetails adminRegDetails = new AdminRegDetails();
		model.addAttribute("adminreg", adminRegDetails);
		return "adminform";
	}
	
	@RequestMapping("/adminland")
	public String adminHome(@ModelAttribute("adminreg")AdminRegDetails adminRegDetails, @RequestParam("image1") MultipartFile image,Model model) throws IOException {
		if (image != null && !image.isEmpty()) {
    		
            System.out.println("Image Name: " + image.getOriginalFilename());
            System.out.println("Image Size: " + image.getSize());
            System.out.println("Image Type: " + image.getContentType());

            adminRegDetails.setAdminPhoto(image.getBytes());
            adminRegDetails.setImageContentType(image.getContentType());
            
           
        } else {
            System.out.println("No image uploaded");
        }
		adminRegService.saveAdminRegDetail(adminRegDetails);
		model.addAttribute("adminreg", adminRegDetails);
		return "adminhome";
	}
	
	@RequestMapping("/adminland2")
	public String adminlandpage(@RequestParam("adminUsername") String username, 
	                            @RequestParam("adminPassword") String password, 
	                            Model model) {
	    AdminRegDetails user = adminRegService.login(username, password);
	    
	    if (user != null) {
	        model.addAttribute("adminreg", user); // Pass `user` as `adminreg` to the JSP
	        
	        return "adminhome"; // Login successful
	    } else {
	        model.addAttribute("error", "Invalid username or password");
	        return "login"; // Redirect back to login on failure
	    }
	}

	
	@RequestMapping("/log")
	public String adminLogin() {
		return "adminlog";
	}
}
