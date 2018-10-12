package mvc;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MyServices {

	@RequestMapping (value="/hello",method=RequestMethod.GET)
	public String sayHello(ModelMap map) {
		String message = "Hello Welcome to Spring MVC--";
		String onemoremessage = "waddup boi!";
		
		map.addAttribute("first", message);
		map.addAttribute("second", onemoremessage);
		
		System.out.println("-----------------Runnnnnning");
		return "mango";
	}
	
	@RequestMapping (value="/viewEmployee",method=RequestMethod.GET)
	public ModelAndView showAllEmployees(ModelMap map) {
		List<Employee> list = new ShowAllEmployeeLogic().getAllEmployees();
		map.addAttribute("allemp", list);
		//map.addAttribute("command",new Employee())
		return new ModelAndView("allemployees","command",new Employee());
		
	}
	
	@RequestMapping (value="/",method=RequestMethod.GET)
	public String welcomePage() {
		return "welcome";
	}
	
	@RequestMapping (value="/newEmployee",method=RequestMethod.GET)
	public ModelAndView addNewEmployee() {
		
		
		return new ModelAndView("empform", "command", new Employee());
	}
	
	@RequestMapping (value="saveEmployee",method=RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("mango")Employee mango) {
		
		int ret = new ShowAllEmployeeLogic().insertEmployee(mango);
		mango.display();
		return new ModelAndView("redirect:/viewEmployee");
	}
	
	@RequestMapping (value="deleteEmployee/{eid}",method=RequestMethod.GET)
	public ModelAndView deleteEmployee(@PathVariable int eid) {
		int ret = ShowAllEmployeeLogic.deleteEmployee(eid);
		
		return new ModelAndView("redirect:/viewEmployee");
	}
	@RequestMapping (value="editEmployee/{eid}",method=RequestMethod.GET)
	public ModelAndView editEmployee(@PathVariable int eid) {
		Employee emp = ShowAllEmployeeLogic.getEmployee(eid);
		return new ModelAndView("allemployees", "command", emp);
	}
	
	@RequestMapping (value="saveUpdate",method=RequestMethod.POST)
	public ModelAndView updateEmployee(@ModelAttribute("mango")Employee mango) {
		int ret = ShowAllEmployeeLogic.updateEmployee(mango);
		return new ModelAndView("redirect:/viewEmployee");
	}
	
}
