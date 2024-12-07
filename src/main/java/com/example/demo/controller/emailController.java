package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.ServiceRequest;
import com.example.demo.model.email;
import com.example.demo.repository.emailRepository;
import com.example.demo.service.EmailService;

@Controller
public class emailController {
	
	@Autowired
	private  emailRepository repository;
	
	@Autowired
	private EmailService emailService;
	
	

	    @GetMapping("/adminemail")
	    public ModelAndView adminPage() {
	        List<email> requests = repository.findAll();
	        ModelAndView mav = new ModelAndView("adminemail");
	        mav.addObject("requests", requests);
	        return mav;
	    }

	    @PostMapping("/replyRequest")
	    public ModelAndView replyRequest(@RequestParam Long id, @RequestParam String reply) {
	        email request = repository.findById(id).orElseThrow();
	        request.setAdminReply(reply);
	        repository.save(request);

	        // Send email to user
	        emailService.sendEmail(request.getUserEmail(), "Service Request Reply", reply);

	        return new ModelAndView("redirect:/adminemail");
	    }
	    
	    @PostMapping("/deleteRequest")
	    public ModelAndView deleteRequest(@RequestParam Long id) {
	        repository.deleteById(id);
	        
	        ModelAndView mv = new ModelAndView("redirect:/adminemail");
	        mv.addObject("msg", "Request deleted successfully!");
	        return mv;
	    }

}
