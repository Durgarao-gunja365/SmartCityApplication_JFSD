package com.example.demo.controller;


import java.util.ArrayList;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.service;
import com.example.demo.model.ServiceRequest;

import com.example.demo.service.AdminService;
import com.example.demo.service.ServiceService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminser;
	
	@GetMapping("/adminLogin")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminLogin");
		return mv;
	}
	

	@GetMapping("/adminHome")
	public ModelAndView adminHome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminHome");
		Long count	=adminser.customercount();
		mv.addObject("count", count);
		Long requestcount	=adminser.requestcount();
		mv.addObject("requestcount", requestcount);
		return mv;
	}
	@PostMapping("checkAdminLogin")
	public ModelAndView checkAdminLogin(HttpServletRequest request)
	{
		ModelAndView mv= new ModelAndView();	
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		
		Admin admin=adminser.checkAdminLogin(username, password);
		
		if(admin!=null)
		{
			mv.setViewName("adminHome");
			
		Long count	=adminser.customercount();
		mv.addObject("count", count);
		Long requestcount	=adminser.requestcount();
		mv.addObject("requestcount", requestcount);
		
			
		}
		else
		{
			mv.setViewName("adminLogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("ViewAllCustomers")
	public ModelAndView ViewAllCustomers()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("ViewAllCustomers");
		List<Customer> customer =adminser.viewAllCustomer();
		mv.addObject("customerlist", customer);
		Long count	=adminser.customercount();
		mv.addObject("count", count);
		return mv;
	}
	
	
	@GetMapping("viewrequest")
	public ModelAndView viewrequest()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("viewrequest");
		List<ServiceRequest> servicerequest =adminser.viewRequest();
		mv.addObject("requestlist", servicerequest);
		Long count	=adminser.requestcount();
		mv.addObject("requestcount", count);
		return mv;
	}
	
	// deleteing the request "deleteRequest/${request.id}"
	
	@PostMapping("deleteRequest/{id}")
	public ModelAndView deleteRequest(@PathVariable Long id, RedirectAttributes redirectAttributes) {
	    adminser.deleteRequestById(id);
	    redirectAttributes.addFlashAttribute("message", "Service request deleted successfully.");
	    return new ModelAndView("redirect:/viewrequest");
	}

	@GetMapping("/addnewservice")
	public ModelAndView addnewservice()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin-add-service");
		return mv;
	}
	
	@Autowired
	 private ServiceService serviceService;

		@PostMapping("addservice")
		public ModelAndView addService(HttpServletRequest request )  {
		    // Extract text data from the request
		    String category = request.getParameter("category");
		    String title = request.getParameter("title");
		    String description = request.getParameter("description");
		    String location = request.getParameter("location");
		    String date = request.getParameter("date");

		   
		    
		    // Process image file
		  

		    // Map data to the Service entity
		    service service = new service();
		    service.setCategory(category);
		    service.setTitle(title);
		    service.setDescription(description);
		    service.setLocation(location);
		    service.setDate(date);
		    
		    // Save service
		    serviceService.addService(service);

		    // Return success view
		    ModelAndView mv = new ModelAndView("admin-add-service");
		    mv.addObject("message", "Service added successfully!");
		    return mv;
		}

		// View all services by category (User)
		@GetMapping("/addedservice")
		public ModelAndView viewServicesByCategory(@RequestParam(required = false) String category) {
		    ModelAndView modelAndView = new ModelAndView("services"); // Set view to the services page
		    List<service> services =new ArrayList<>();
		    if (category != null && !category.isEmpty()) {
		        services = serviceService.getServicesByCategory(category);
		        if (services.isEmpty()) {
		            modelAndView.addObject("message", "No services found for the selected category.");
		        }
		    } else {
		        services = serviceService.getAllServices();
		    }
		    System.out.println("Services: " + services);
		    modelAndView.addObject("services", services); // Add the services list to the model
		    return modelAndView;
		}
		
		@GetMapping("updatenewservice")
		public ModelAndView showUpdateForm(@RequestParam("id") Long id) {
		    ModelAndView modelAndView = new ModelAndView("updatenewservice"); // View name for update form
		    service service = serviceService.getServiceById(id); // Fetch the service by ID
		    modelAndView.addObject("service", service);
		    return modelAndView;
		}
		
		@PostMapping("/admin/update-service")
		public ModelAndView updateService(HttpServletRequest request) {
		    // Retrieve form parameters
		    long id = Integer.parseInt(request.getParameter("id"));
		    String title = request.getParameter("title");
		    String description = request.getParameter("description");
		    String location = request.getParameter("location");
		    String date = request.getParameter("date");
		    String category = request.getParameter("category");

		    // Create a new Service object with the updated values
		    service updatedService = new service();
		    updatedService.setId(id);
		    updatedService.setTitle(title);
		    updatedService.setDescription(description);
		    updatedService.setLocation(location);
		    updatedService.setDate(date);
		    updatedService.setCategory(category);

		    // Call the service layer to update the service
		    serviceService.updateService(updatedService);

		    // Redirect back to the service list
		    return new ModelAndView("redirect:/addedservice");
		}


	
		@GetMapping("deleteservice/{id}")
		public ModelAndView deleteService(@PathVariable Long id, RedirectAttributes redirectAttributes) {
			serviceService.deleteService(id);
		    redirectAttributes.addFlashAttribute("message", "Service request deleted successfully.");
		    return new ModelAndView("redirect:/addedservice");
		}
	
}
