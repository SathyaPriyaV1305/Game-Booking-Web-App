package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

import com.model.ConsoleDetails;
import com.model.UserBooking;
import com.service.ConsoleService;


@Controller
@RequestMapping("/consoles")
public class ConsoleController {
	@Autowired
	public ConsoleService consoleService;
	
	@RequestMapping("/new")
	public String newUser(Model model) {
		ConsoleDetails console= new ConsoleDetails();
		model.addAttribute("console",console);
		return "console-admin";
	}
	@RequestMapping("/save")
	public String saveUser(@ModelAttribute("console")ConsoleDetails consoleDetails, Model model) {
		consoleService.saveConsoleDetail(consoleDetails);
		List<ConsoleDetails> consoleList = consoleService.getAllConsoleDetails();
		model.addAttribute("console",consoleList);
	    return "console-list-admin";
	    }
	@RequestMapping("/list/{username}")
	public String listUser(@PathVariable("username")String username,Model model) {
		List<ConsoleDetails> consoleList = consoleService.getAllConsoleDetails();
		model.addAttribute("console",consoleList);
		model.addAttribute(username);
		return "console-list-admin";
	}
	
	@RequestMapping("/edit/{id}")
    public String editConsole(@PathVariable("id") Long id, Model model) {
        ConsoleDetails consoleDetails = consoleService.getConsoleDetailtById(id);
        model.addAttribute("console", consoleDetails);
        return "console-edit-admin";
	}
	
	 @RequestMapping("/update/{id}")
	    public String updateGame(@PathVariable("id") Long id,
	                             @ModelAttribute("console") ConsoleDetails consoleDetails) {
	        consoleService.saveConsoleDetail(consoleDetails);
	        return "redirect:/consoles/list";
	    }
	
	@RequestMapping("/delete/{id}")
    public String deleteConsole(@PathVariable("id") Long id) {
    	consoleService.deleteConsole(id);
    	return "redirect:/consoles/list";
    }
	
	@RequestMapping("/book/{id}/{username}")
	public String bookConsole(@PathVariable("username")String username,@PathVariable("id") Long id,Model model) {
		model.addAttribute(id);
		model.addAttribute(username);
		UserBooking userBooking = new UserBooking();
		model.addAttribute("userbookings", userBooking);
		return "booking-details";
	}
	
	@RequestMapping("/devicelist/{username}")
	public String listBooking(@PathVariable("username")String username,Model model) {
		List<ConsoleDetails> consoleList = consoleService.getAllConsoleDetails();
		model.addAttribute("console",consoleList);
		model.addAttribute(username);
		return "user-consolebook";
	}
}