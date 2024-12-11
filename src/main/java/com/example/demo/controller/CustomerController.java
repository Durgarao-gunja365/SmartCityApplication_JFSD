package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;
import com.example.demo.model.service;
import com.example.demo.repository.ServiceRequestRepository;
import com.example.demo.repository.emailRepository;
import com.example.demo.service.CustomerService;
import com.example.demo.service.EmailService;
import com.example.demo.service.ServiceService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@Controller

public class CustomerController {
	
	@Autowired
	private CustomerService comser;
	
	@Autowired
    private ServiceRequestRepository serviceRequestRepository;
	
	@Autowired
	private ServiceService serviceService;

	private String username;
	
	@GetMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	@GetMapping("/home")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Home");
		return mv;
	}
	
	@GetMapping("/customerRegister")
	public ModelAndView customerRegister()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerRegister");
		return mv;
	}
	
	
	@PostMapping("insertcustomer")
	public ModelAndView insertCustomer(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    String name = request.getParameter("cname");
	    String gender = request.getParameter("cgender");
	    String dob = request.getParameter("cdob");
	    String email = request.getParameter("cemail");
	    String location = request.getParameter("clocation");
	    String contact = request.getParameter("ccontact");
	    String password = request.getParameter("cpassword");

	    // Flag to check if there are validation errors
	    boolean hasError = false;

	    // Validate input fields
	    if (name == null || name.trim().isEmpty()) {
	        mv.addObject("nameError", "Name cannot be empty");
	        hasError = true;
	    }
	    if (gender == null || gender.trim().isEmpty()) {
	        mv.addObject("genderError", "Gender is required");
	        hasError = true;
	    }
	    if (dob == null || dob.trim().isEmpty()) {
	        mv.addObject("dobError", "Date of Birth is required");
	        hasError = true;
	    }
	    if (!email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")) {
	        mv.addObject("emailError", "Invalid email format");
	        hasError = true;
	    }
	    if (location == null || location.trim().isEmpty()) {
	        mv.addObject("locationError", "Location cannot be empty");
	        hasError = true;
	    }
	    if (!contact.matches("\\d{10}")) {
	        mv.addObject("contactError", "Contact must be a 10-digit number");
	        hasError = true;
	    }
	    if (password == null || password.length() < 6) {
	        mv.addObject("passwordError", "Password must be at least 6 characters long");
	        hasError = true;
	    }

	    // If there are validation errors, return to the registration page
	    if (hasError) {
	        mv.setViewName("customerRegister");
	        return mv;
	    }

	    // If no validation errors, create and register the customer
	    Customer com = new Customer();
	    com.setName(name);
	    com.setGender(gender);
	    com.setDob(dob);
	    com.setEmail(email);
	    com.setLocation(location);
	    com.setContact(contact);
	    com.setPassword(password);

	    String message = comser.customerRegistration(com);

	    if (message.contains("exists")) {
	        mv.addObject("emailError", message); // Display duplicate error
	    }

	    mv.setViewName("customerRegister");
	    mv.addObject("message", message);
	    return mv;
	}



	@GetMapping("/customerLogin")
	public ModelAndView customerLogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerLogin");
		return mv;
	}
	@GetMapping("/customerlogout")
	public ModelAndView customerlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate();
	    }
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerLogin");
		return mv;
	}
	
	
	

	
	
	@PostMapping("checkCustomerLogin")
	public ModelAndView checkCustomerLogin(HttpServletRequest request)
	{
		ModelAndView mv= new ModelAndView();	
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		
		Customer customer=comser.checkCustomerLogin(username, password);
		
		if(customer!=null)
		{
			
			HttpSession session=request.getSession();
			 session.setMaxInactiveInterval(1800);
			session.setAttribute("customer", customer);
			mv.setViewName("CustomerHome");
		}
		else
		{
			mv.setViewName("customerLogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("CustomerProfile")
	public ModelAndView CustomerProfile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("CustomerProfile");
		return mv;
	}
	
	@GetMapping("CustomerHome")
	public ModelAndView CustomerHome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("CustomerHome");
		return mv;
	}
	
	@GetMapping("mapintegration")
	public ModelAndView mapintegration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("mapintegration");
		return mv;
	}
	
	@GetMapping("mainMap")
	public ModelAndView mainMap()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("mainMap");
		return mv;
	}

	
/*public services*/
	@GetMapping("publicservices")
	public ModelAndView publicservices()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("publicservices");
		return mv;
	}
	
	
	@GetMapping("infrastructure")
	public ModelAndView infrastructure()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("infrastructure");
		return mv;
	}
	
	
	@GetMapping("amenities")
	public ModelAndView amenities()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("amenities");
		return mv;
	}
	
	
	@GetMapping("userpublicservice")
	public ModelAndView userpublicservice()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userpublicservice");
		return mv;
	}
	
	@GetMapping("userinfrastructureservice")
	public ModelAndView userinfrastructureservice()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userinfrastructureservice");
		return mv;
	}
	
	@GetMapping("useraminities")
	public ModelAndView useraminities()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("useraminities");
		return mv;
	}
	
	
	@GetMapping("/updateCustomer/{id}")
    public ModelAndView showUpdateForm(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("updateCustomer");
        Customer customer = comser.getCustomerById(id); // Assuming this method is implemented in CustomerService
        mv.addObject("customer", customer);
        return mv;
    }
	
	/* update user detials */
	
	 @PostMapping("/updateCustomer")
	    public ModelAndView updateCustomer(HttpServletRequest request) {
		 int id = Integer.parseInt(request.getParameter("id"));

	        String name = request.getParameter("cname");
	        String gender = request.getParameter("cgender");
	        String dob = request.getParameter("cdob");
	        String email = request.getParameter("cemail");
	        String location = request.getParameter("clocation");
	        String contact = request.getParameter("ccontact");
	        String password = request.getParameter("cpassword");

	        Customer customer = new Customer();
	        customer.setId(id);
	        customer.setName(name);
	        customer.setGender(gender);
	        customer.setDob(dob);
	        customer.setEmail(email);
	        customer.setLocation(location);
	        customer.setContact(contact);
	        customer.setPassword(password);

	        String message = comser.updateCustomer(customer);
	        ModelAndView mv = new ModelAndView("CustomerProfile");
	        mv.addObject("message", message);
	        return mv;
	        
	        
	        
	    }
	 
	 
	 @Autowired
		private HttpSession session;
		
		 public int getCustomerIdFromSession() {
		        Integer customerId = (Integer) session.getAttribute("id");
		        if (customerId != null) {
		            return customerId;
		        }
		        return -1; // Return a default value or throw an exception if not found
		    }
	 
		 @GetMapping("/CustomerViewRequest")
		 public ModelAndView viewSubmittedRequests(HttpSession session) {
		     ModelAndView mv = new ModelAndView("CustomerViewRequest");

		     // Retrieve the serviceRequest from the session
		     ServiceRequest serviceRequest = (ServiceRequest) session.getAttribute("serviceRequest");

		     // Check if the serviceRequest is not null
		     if (serviceRequest != null) {
		         String usid = serviceRequest.getUsid();
		         // Fetch service requests from the database by usid
		         List<ServiceRequest> serviceRequests = serviceRequestRepository.findByUsid(usid);
		         mv.addObject("customerlist", serviceRequests);
		     } else {
		         // Handle the case where the service request is null (e.g., not found in session)
		         mv.addObject("msg", "No service request found in session.");
		     }

		     return mv;
		 }


	 
	 
	 
	 @GetMapping("about")
		public ModelAndView about()
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("about");
			return mv;
		}
	 
	 @GetMapping("servicespage")
		public ModelAndView servicespage()
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("servicespage");
			return mv;
		}
	 
	 @PostMapping("usdeleteRequest/{id}")
		public ModelAndView usdeleteRequest(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		 comser.usdeleteRequest(id);
		    redirectAttributes.addFlashAttribute("message", "Service request deleted successfully.");
		    return new ModelAndView("redirect:/CustomerViewRequest");
		}

	 @GetMapping("viewnewservices")
		public ModelAndView viewnewservices()
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("viewusernewaddedservies");
			return mv;
		}
	 
	 @GetMapping("/viewaddedservice")
		public ModelAndView viewServicesByCategory(@RequestParam(required = false) String category) {
		    ModelAndView modelAndView = new ModelAndView("viewusernewaddedservies"); // Set view to the services page
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
	 
	 
	 
		@Autowired
		private  emailRepository repository;
		
		@Autowired
		private EmailService emailService;
		
		 @GetMapping("/email")
		    public ModelAndView userPage() {
		        ModelAndView mav = new ModelAndView("userEmail");
		        return mav;
		    }

		    @PostMapping("/submitRequest")
		    public ModelAndView submitRequest(@RequestParam String email, @RequestParam String details) {
		        com.example.demo.model.email request= new com.example.demo.model.email();
		        request.setUserEmail(email);
		        request.setRequestDetails(details);
		        repository.save(request);
		        
		        ModelAndView mv=new ModelAndView();
		        mv.addObject("message", "Your service request has been submitted successfully!");
		        mv.setViewName("userEmail");
		        
		        return 		mv;
		        }
	 
}
