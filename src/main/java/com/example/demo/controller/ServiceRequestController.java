package com.example.demo.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;
import com.example.demo.service.ServiceRequestService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.Session;
import jakarta.servlet.http.HttpSession;


@Controller
public class ServiceRequestController {
	
	@Autowired
	private ServiceRequestService srs;
	
	

	
	
	
	@GetMapping("submitrequest")
	public ModelAndView submitrequest()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("submitrequest");
		return mv;
	}
	
	@PostMapping("submitServiceRequest")
	public ModelAndView submitServiceRequest(HttpServletRequest request) {
	    String usid = request.getParameter("usid");
	    String name = request.getParameter("name");
	    String contact = request.getParameter("contact");
	    String requestType = request.getParameter("requestType");
	    String location = request.getParameter("location");
	    String description = request.getParameter("description");
	    String priority = request.getParameter("priority");
	    String date = request.getParameter("date");

	    ServiceRequest req = new ServiceRequest();
	    req.setUsid(usid);
	    req.setName(name);
	    req.setContact(contact);
	    req.setRequestType(requestType);
	    req.setLocation(location);
	    req.setDescription(description);
	    req.setPriority(priority);
	    req.setDate(date);

	    // Save the service request to the database
	    srs.saveRequest(req);

	    // Store the service request in the session
	    HttpSession session = request.getSession();
	    session.setAttribute("serviceRequest", req);

	    ModelAndView mav = new ModelAndView();
	    mav.setViewName("submitrequest");
	    mav.addObject("message", "Service request submitted successfully!");
	    return mav;
	}

		
	
}
