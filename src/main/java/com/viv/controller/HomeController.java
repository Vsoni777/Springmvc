package com.viv.controller;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.config.web.server.SecurityWebFiltersOrder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.viv.model.Appointment;
import com.viv.model.Doctorfrom;
import com.viv.model.Paitent;
import com.viv.model.Puserinfo;
import com.viv.model.Userinfo;
import com.viv.services.Apservice;
import com.viv.services.DoctorService;
import com.viv.services.LService;
import com.viv.services.Pservice; 

@SessionAttributes("hs")
@Controller
public class HomeController<reurn> {
	@Autowired
	private DoctorService dser;
	@Autowired
	private LService lser;
	@Autowired
	private Pservice pser;
	@Autowired
	private Apservice apser;
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/home")
	public ModelAndView index1()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	@RequestMapping("/doctor_profile_settings")
	public ModelAndView doctor_profile_settings() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("doctor_profile_settings");
		return mv;
	}
	
	@RequestMapping("/Doctor_dashboard")
	public String Doctor_dashboard(){
		return "Doctor_dashbord";
	}
	
	@RequestMapping("/Doctor")
	public ModelAndView doctor() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Doctor");
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("login");
		return mv;
	}
	@RequestMapping("/register")
	public  ModelAndView register() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("register");
		return mv;
	}
	@RequestMapping("/docsearch")
	//Write differnet logic for search api for search doctor spacific location
	public ModelAndView doctor_search() {
		ModelAndView mv=new ModelAndView("doctor-search");
		return mv;
	}
	@RequestMapping("/Appointment")
	public ModelAndView Appointment() {
		ModelAndView mv=new ModelAndView("Appointmenttable");
		return mv;
	}
	@RequestMapping("/book")
	public ModelAndView book() {
		ModelAndView mv=new ModelAndView("book");
		return mv;
	}
	
	@RequestMapping("/docreg")
	public ModelAndView docreg() {
		ModelAndView mv=new ModelAndView("doctor-reg");
		return mv;
	}
	@RequestMapping("/invoice")
	public ModelAndView invoice() {
		ModelAndView mv=new ModelAndView("Invoice");
		return mv;
	}
	@RequestMapping("/Logout")
	public ModelAndView logout() {
		ModelAndView mv=new ModelAndView("logout");
		 
		return mv;
	}
	
	@RequestMapping("/Mappointment")
	public ModelAndView makeap() {
		ModelAndView mv=new ModelAndView("Mappointment");
		return mv;
	}
	
	@RequestMapping("/mypaisent")
	public ModelAndView mypaisent() {
		ModelAndView mv=new ModelAndView("My-patient");
		return mv;
	}
	@RequestMapping("/patient")
	public ModelAndView patient() {
		ModelAndView mv=new ModelAndView("patient");
		return mv;
	}
	@RequestMapping("/SeeAppointment")
	public ModelAndView seeappointment() {
		ModelAndView mv=new ModelAndView("SeeAppoinment");
		return mv;
	}
	@RequestMapping("/service")
	public ModelAndView service() {
		ModelAndView mv=new ModelAndView("service");
		return mv;
	}
	@RequestMapping("/Suceess")
	public ModelAndView success() {
		ModelAndView mv=new ModelAndView("Success-booking");
		return mv;
	}
	
	@RequestMapping("/Toaddpaisent")
	public ModelAndView toaddpaisent(){
	 ModelAndView mv=new ModelAndView("Toaddpaitent");
	 return mv;
	}
	
	@RequestMapping("/UpdateApp")
	public ModelAndView updateAppointment() {
		ModelAndView mv=new ModelAndView("UpdateAppoint");
		return mv;
	}
	@RequestMapping("/pregister")
	public ModelAndView preg() {
		ModelAndView mv=new ModelAndView("p-reg");
		return mv;
	}
	
	@RequestMapping("/book1")
	public ModelAndView book1(){
		ModelAndView mv=new ModelAndView("book1");
		return mv;
	}
	
	@RequestMapping("/UpdateedAppointment")
	public ModelAndView updateap() {
		ModelAndView mv=new ModelAndView("UpdateedAppointment");
		return mv;
	}
	
	@RequestMapping("/Dpatient")
	public ModelAndView dpatient() {
		ModelAndView mv=new ModelAndView("Dpatient");
		return mv;
	}
	
	@RequestMapping("/viewallpatient")
	public ModelAndView viewallp() {
		ModelAndView mv=new ModelAndView("viewallpatient");
		return mv;
	}
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mv=new ModelAndView("contact");
		return mv;
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView mv=new ModelAndView("about");
		return mv;
	}
	
	@RequestMapping("/Blog")
	public ModelAndView blog() {
		ModelAndView mv=new ModelAndView("Blog");
		return mv;
	}
	
	@RequestMapping("/error")
	public ModelAndView error_page() {
		ModelAndView mv=new ModelAndView("error");
		return mv;
	}
	
	 @RequestMapping(value = "/doctor_profile_settings", method = RequestMethod.POST)
	    public ModelAndView handleFileUpload(@Valid @ModelAttribute("doc")Doctorfrom doc,
	    	  BindingResult result,
                @RequestParam("profile") CommonsMultipartFile file,
                @RequestParam("dob") @DateTimeFormat(iso=DateTimeFormat.ISO.DATE) String dob,
                @RequestParam("address_line1") String address_line1,
				  @RequestParam("address_line2") String address_line2,
				  @RequestParam("city") String city,
				  @RequestParam("state") String state,
				  @RequestParam("country") String country,
				 
				 @RequestParam("pcode") String pcode,
				  @RequestParam("degree") String degree,
				  @RequestParam("c_name") String c_name,
				 @RequestParam("c_year") String c_year,
				  
				  @RequestParam("h_name") String h_name,
				 
				  @RequestParam("s_date") @DateTimeFormat(iso=DateTimeFormat.ISO.DATE)
				  String s_date,
				  
				  @RequestParam("l_date") @DateTimeFormat(iso=DateTimeFormat.ISO.DATE)
				 String l_date,
				 
				  @RequestParam("designation") String designation,
				  
				 @RequestParam("service") String service,
				 
				  @RequestParam("specialist")String specialist,
				 Model model) throws IOException,ParseException{
		 
	        ModelAndView mv = new ModelAndView();
	        System.out.println("file name"+file.getOriginalFilename());
	      doc.setProfile(file.getOriginalFilename());
	      byte[] data=file.getBytes();
	      String path="C:/Users/vivek/eclipse-workspace-hibrenet/Springmvcdemo/src/main/webapp/Image"+File.separator+file.getOriginalFilename();
	      System.out.println(path);
	      try {
	    	  FileOutputStream fos=new FileOutputStream(path);
	    	  fos.write(data);
	    	  fos.close();
	    	  System.out.println("file uploaded");
	      }catch(IOException e) {
	    	  e.printStackTrace();
	    	  System.out.println("Error in file uploadtion");
	      }
	       System.out.println("dov"+doc);
	       
			String email;
			  try { 
				  email= dser.save(doc); 
				  if(email!=null) {
			  model.addAttribute("username",email); mv.setViewName("register");
			  }else {
			  model.addAttribute("sms", "object is not saved"); 
			  mv.setViewName("doctor_profile_settings");
			  } 
			}catch(Exception e) {
			  System.out.println("Error in service"); }
			 
			  if(result.hasErrors()) {
				  mv.setViewName("doctor_profile_settings");
			  }
	      
			return mv;
	 }
	@RequestMapping(value = "/Login",method = RequestMethod.POST)
	
	 public ModelAndView login( @ModelAttribute("user") Userinfo user,@ModelAttribute("puser") Puserinfo puser,Model model,HttpSession session) {
		 ModelAndView mv=new ModelAndView();
		System.out.print(user);
		
		 
		Userinfo ls =lser.authenticate(user);
		Puserinfo pls=lser.pauthenticate(puser);
		 System.out.println("in back"+ls+"pls"+pls);
		 if(ls!=null) {
		 String us=ls.getUsername();
		 System.out.println(us);
		 session.setAttribute("user",us );
		 
		 mv.setViewName("Doctor_dashbord");
		
		 }else if(pls!=null){
			 String us=pls.getUsername();
			 System.out.println(us);
			 session.setAttribute("user",us );
			 
			 mv.setViewName("patient");
			 
		 }else {
			 model.addAttribute("sms","login/password are invalid");
			 mv.setViewName("login");
		 }
		 
		return mv;
	 }
	@RequestMapping(value = "/Login1",method = RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("user") Userinfo user,Model model) {
		ModelAndView mv=new ModelAndView();
		System.out.println(user);
		int count=lser.createUser(user);
		
		if(count>0) {
			model.addAttribute("sms", "now you are register");
			mv.setViewName("login");
		}else {
			model.addAttribute("sms", "invalid input");
			mv.setViewName("register");
		}
		return mv;
		
	}
	
	
	@RequestMapping(value="/savepaisent")
	public ModelAndView savepaisent(@Valid @ModelAttribute("paisent") Paitent paisent,BindingResult reuslt,@RequestParam("pimg") CommonsMultipartFile file, @RequestParam("dob") @DateTimeFormat(iso=DateTimeFormat.ISO.DATE) String dob,Model model) {
		ModelAndView mv=new ModelAndView();
		System.out.println("file name"+file.getOriginalFilename());
	      paisent.setPimg(file.getOriginalFilename());
	      byte[] data=file.getBytes();
	      String path="C:/Users/vivek/eclipse-workspace-hibrenet/Springmvcdemo/src/main/webapp/pimage"+File.separator+file.getOriginalFilename();
	      System.out.println(path);
	      try {
	    	  FileOutputStream fos=new FileOutputStream(path);
	    	  fos.write(data);
	    	  fos.close();
	    	  System.out.println("file uploaded");
	      }catch(IOException e) {
	    	  e.printStackTrace();
	    	  System.out.println("Error in file uploadtion");
	      }
	      System.out.println("In controller"+paisent);
	      String email;
		  try { 
			  email= pser.save(paisent); 
			  if(email!=null) {
		  model.addAttribute("username",email);
		  mv.setViewName("pregister");
		  }else {
		  model.addAttribute("sms", "object is not saved"); 
		  mv.setViewName("patient");
		  } 
		}catch(Exception e) {
		  System.out.println("Error in service"); }
		return mv;
	}
	@RequestMapping(value="/Alldoc",method = RequestMethod.GET)
	public ModelAndView alldoc(@ModelAttribute("doc") Doctorfrom doc, BindingResult result,
			HttpServletRequest req, Model model) {
		ModelAndView mv=new ModelAndView();
		List<Doctorfrom> lst= this.dser.alldoc(doc);
		System.out.println(lst.get(0).getProfile());
		if(doc!=null) {
			model.addAttribute("doc", lst);
			mv.setViewName("book");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	@RequestMapping(value="/preg",method = RequestMethod.POST)
	
	public ModelAndView puserlog(@ModelAttribute("puser") Puserinfo puser,Model model) {
		 
		 ModelAndView mv=new ModelAndView();
			System.out.println(puser);
			int count=lser.createpUser(puser);
			if(count>0) {
				model.addAttribute("sms", "now you are register");
				mv.setViewName("login");
			}else {
				model.addAttribute("sms", "invalid input");
				mv.setViewName("pregister");
			}
			return mv;
	}
	 @GetMapping("{did}/{user}/book")
	public ModelAndView toappoint(@PathVariable("did") String did,@PathVariable("user") String user, RedirectAttributes red)
	{
		
			ModelAndView mv=new ModelAndView();
			System.out.println(did);
			red.addFlashAttribute("did", did);
			System.out.println("user"+user);
			@SuppressWarnings("unchecked")
			List<Paitent> lst=this.pser.getpaisent(user);
			
			
			red.addFlashAttribute("paitent", lst);
			mv.setViewName("redirect:/Mappointment");
			return mv;
	}
	 
	 
	 @RequestMapping(value="/bookapp",method=RequestMethod.POST)
	 public ModelAndView bookapp(@ModelAttribute("ap") Appointment ap,@RequestParam("docid") String docid,Model model) {
		 ModelAndView mv=new ModelAndView();
		 System.out.println(ap);
		 int did=Integer.parseUnsignedInt(docid);
		
		 System.out.println("after"+ap);
		 
		int count=this.apser.save(ap);
		if(count!=0&&count>0) {
		 mv.setViewName("Success-booking");
		}else {
			mv.setViewName("service");
		}
		 
		 
		 return mv;
	 }
	@GetMapping("/toseeappointment")
	 public ModelAndView seeapp(@ModelAttribute("ap") Appointment ap,Model model) {
		 ModelAndView mv=new ModelAndView();
		 @SuppressWarnings("unchecked")
		List<Appointment> list=this.apser.getAllrecord(ap);
		 if(list!=null&&list.size()>0) {
			 model.addAttribute("allAppoint", list);
		 mv.setViewName("SeeAppointment");
		 }else {
			 mv.addObject("sms", "You have no appointment");
			 mv.setViewName("SeeAppointment");
		 }
		 return mv;
	 }
	
	@PostMapping("/{apid}/updateapp")
	public ModelAndView updateapp(@ModelAttribute("ap") Appointment ap,@RequestParam("action") String status,@PathVariable("apid") int apid,Model model) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("UpdateedAppointment");
		
		System.out.println(apid);
		
		int count=this.apser.updateap(apid,status);
		if(count>0) {
			mv.setViewName("redirect:/Suceess");
		}
		return mv;
	}
	
	@GetMapping("/UpdateedAppointment")
	public ModelAndView updatedap(@ModelAttribute("ap") Appointment ap,Model model) {
		ModelAndView mv=new ModelAndView();
		System.out.println("hi");
	
		List<Appointment> list=this.apser.getAllrecord(ap);
		System.out.println("Updated"+list);
		 if(list!=null&&list.size()>0) {
			 model.addAttribute("list", list);
			 mv.setViewName("UpdateedAppointment");
		 }else {
			 model.addAttribute("sms", "you have no appointment");
			 mv.setViewName("UpdateedAppointment");
		 }
		
		
		return mv;
		
	}
	
	@RequestMapping(value="/Allpatient",method = RequestMethod.GET)
	public ModelAndView alldoc(@ModelAttribute("paitent") Paitent paitent, BindingResult result,
			HttpServletRequest req, Model model) {
		ModelAndView mv=new ModelAndView();
		List<Paitent> lst= this.pser.allpaitent(paitent);
		System.out.println(lst.get(0).getPimg());
		if(lst!=null) {
			model.addAttribute("paitent", lst);
			mv.setViewName("viewallpatient");
		}
		
		if(result.hasErrors()) {
			mv.setViewName("viewallpatient");
		}
		return mv;
	}

     
	
}

