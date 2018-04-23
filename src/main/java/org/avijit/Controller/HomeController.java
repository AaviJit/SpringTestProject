package org.avijit.Controller;

import org.avijit.DAO.EmployeeDao;

import org.avijit.Domain.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;


@Controller
public class HomeController {


    @Autowired
    EmployeeDao employeeDao;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showLoginPage() {
        return "LoginPage";
    }


    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute(new Employee());
        return "RegistrationPage";
    }

    @RequestMapping(value = "/doRegistration", method = RequestMethod.POST)
    public String doRegistration(@Valid @ModelAttribute("employee") Employee employee, BindingResult result) {


        if (result.hasErrors()) {
            return "RegistrationPage";
        }

        if (employeeDao.isExist(employee.getUserName())) {
            result.rejectValue("userName", "DuplicateKey.user.userName", "This username already exist! Try again !");
            return "RegistrationPage";
        } else {
            employeeDao.saveEmployee(employee);
            return "LoginPage";
        }

    }


    @RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
    public String welcomePage(@RequestParam String userName, @RequestParam String password,
                              @ModelAttribute("message") Employee employee, BindingResult bindingResult) {

        if (employeeDao.isAuthenticate(userName, password)) {
            return "WelcomePage";
        } else {
            bindingResult.rejectValue("password", "error.idOutOfRange", "Invalid UserName or Password! Try Again!!");
            return "LoginPage";
        }
    }

    @RequestMapping(value = "/memberList")
    public String memberList(Model model) {
        List<Employee> list = employeeDao.getAllMembers();
        model.addAttribute("list", list);
        return "MemberList";
    }

    @RequestMapping(value = "/deleteMember/userName={userName}", method = RequestMethod.GET)
    public String deleteMember(@PathVariable("userName") String userName, Model model) {
        employeeDao.deleteMember(userName);
        List<Employee> list = employeeDao.getAllMembers();
        model.addAttribute("list", list);
        return "MemberList";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext()
                .getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }


    @RequestMapping(value = "/editEmployee/userName={userName}", method = RequestMethod.GET)
    public String editMember(@PathVariable("userName") String userName, Model model) {

        Employee employee = employeeDao.getEmployee(userName);
        model.addAttribute(employee);
        return "EditEmployee";
    }


    @RequestMapping(value = "/doUpdate", method = RequestMethod.POST)
    public String doUpdate(Model model, @Valid Employee employee, BindingResult result) {


        Employee tempObj = employeeDao.getEmployeeById(employee.getId());

        if (employee.getUserName().equals(tempObj.getUserName())) {
            System.out.println("Inserting into if block !!");
            employeeDao.update(employee);
            List<Employee> list = employeeDao.getAllMembers();
            model.addAttribute("list", list);
            return "MemberList";
        } else if (!employee.getUserName().equals(tempObj.getUserName()) && employeeDao.isExist(employee.getUserName())) {
            System.out.println("Inserting into else if 1 block !!");
            result.rejectValue("userName", "DuplicateKey.user.userName", "This username already exist! Try again !");
            return "EditEmployee";
        } else {
            System.out.println("Inside else block !!");
            employeeDao.update(employee);
            List<Employee> list = employeeDao.getAllMembers();
            model.addAttribute("list", list);
            return "MemberList";
        }
    }
}
