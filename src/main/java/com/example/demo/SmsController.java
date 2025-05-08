package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SmsController {
	
	 @Autowired
	    private SmsService ss; 
	
	@GetMapping("/")
	public String Default() {
	    return "home"; // it will look for home.jsp in /pages/
	}
	
	@GetMapping("/home")
	public String showhome() {
	    return "home"; // it will look for home.jsp in /pages/
	}
	
	
	@GetMapping("/studentRegister")
	public String showRegisterForm() {
	    return "studentR"; // studentR.jsp
	}

	@GetMapping("/studentLogin")
	public String showLoginForm() {
	    return "Login"; // login.jsp
	}

	@GetMapping("/adminLogin")
	public String showAdminLogin() {
	    return "adminLogin"; // adminLogin.jsp
	}


	
	@PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute SmsEntity student, Model model) {
        ss.save(student); // Corrected from smsService to ss
        model.addAttribute("name", student.getName());
        return "Login"; // welcome.jsp
    }
	
	 @PostMapping("/studentLogin")
	    public String login(@RequestParam String email, @RequestParam String password, Model model) {
	        SmsEntity student = ss.login(email, password); // Corrected from smsService to ss
	        if (student != null) {
	            model.addAttribute("name", student.getName());
	            return "Welcome"; // success page
	        } else {
	            model.addAttribute("error", "Invalid credentials");
	            return "Login"; // back to login page
	        }
	    }
	 
	 @PostMapping("/adminLogin")
	 public String adminLogin(@RequestParam String username, 
	                          @RequestParam String password, 
	                          Model model) {
	     
	     boolean isAdmin = "admin".equals(username) && "admin123".equals(password);
	     
	     if (isAdmin) {
	         model.addAttribute("students", ss.getAllStudents());
	         return "Dashboard";
	     } 
	     
	     model.addAttribute("error", "Invalid admin credentials");
	     return "adminLogin";
	 }
	 
	 
	 @GetMapping("/update/{id}")
	 public String showUpdateForm(@PathVariable Long id, Model model) {
	     SmsEntity student = ss.getById(id);
	     model.addAttribute("student", student);
	     return "updateStudent"; // updateStudent.jsp
	 }

	 @PostMapping("/updateStudent")
	 public String updateStudent(@ModelAttribute SmsEntity student) {
	     ss.save(student); // same save() will work as it’s based on ID
	     return "redirect:/dashboard"; // or reload admin dashboard
	 }
	 
	 @GetMapping("/delete/{id}")
	 public String deleteStudent(@PathVariable Long id) {
	     ss.deleteById(id);
	     return "redirect:/dashboard";
	 }
	 @GetMapping("/dashboard")
	    public String viewDashboard(Model model) {
	        List<SmsEntity> students = ss.getAllStudents();
	        model.addAttribute("students", students);
	        return "Dashboard";  // this must match the JSP file name (dashboard.jsp)
	    }


}
