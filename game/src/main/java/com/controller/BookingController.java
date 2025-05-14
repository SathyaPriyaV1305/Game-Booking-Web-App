package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.ConsoleDetails;
import com.model.RegisterDetails;
import com.model.UserBooking;
import com.service.BookingService;
import com.service.ConsoleService;
import com.service.RegisterService;


@Controller
@RequestMapping("/userbookingdetails")
public class BookingController{
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	RegisterService registerService;
	
	@Autowired
	ConsoleService consoleService;
	
	@RequestMapping("/new")
	public String showNewBookingForm(Model model) {
		System.out.println("im in showing ticket");
		UserBooking userBooking=new UserBooking();
		model.addAttribute("userbookings",userBooking);
		return "create";
	}
	
	@RequestMapping("/save/{id}/{username}")
	public String saveBooking(@PathVariable("username")String username,@PathVariable("id") Long id,
			@ModelAttribute("userbookings")UserBooking userBooking,Model model) {
		
		RegisterDetails registerDetail = registerService.findUserByUsername(username);
		ConsoleDetails consoleDetail = consoleService.getConsoleDetailtById(id);
		
		userBooking.setConsoleName(consoleDetail.getConsoleName());
		userBooking.setUname(registerDetail.getUsername());
		userBooking.setMobileno(registerDetail.getMobno());
		userBooking.setAmountPayed(consoleDetail.getPricePerHour());
	    bookingService.saveUserBooking(userBooking);
	    
	    model.addAttribute("userbooking", userBooking);
	    
	    return "user-book-payment";
	}

	@RequestMapping("/list/{username}")
	public String listStudents(@PathVariable("username")String username,Model model) {
		UserBooking bookinglist=bookingService.getUserByUserName(username);
		model.addAttribute("bookinglist",bookinglist);
		return "user-your-booking";
	}
	
	@RequestMapping("/view/{id}")
	public String viewStudent(@PathVariable("id")Long id,Model model) {
		UserBooking userBooking=bookingService.getUserBookingById(id);
		model.addAttribute("userbooking",userBooking);
		return "view-userbooking";
	}
	
}