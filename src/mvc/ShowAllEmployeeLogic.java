package mvc;

import java.sql.ResultSet;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class ShowAllEmployeeLogic {
	
	static ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
	static JdbcTemplate jtemp = (JdbcTemplate)context.getBean("jtemp");
	
	public static List<Employee> getAllEmployees() {
		return jtemp.query("select * from employee_data", new EmployeeMapper());
	}

	public static int insertEmployee(Employee obj) {
		return jtemp.update("insert into employee_data values(?,?,?,?)",obj.getEid(),obj.getEname(),obj.getEcity(), obj.getEsalary());
	}
	
	public static int deleteEmployee(int eid) {
		return jtemp.update("delete from employee_data where eid=?",eid);
	}
	
	public static Employee getEmployee(int eid) {
		Employee e = (Employee)jtemp.queryForObject("select * from employee_data where eid = ?", new EmployeeMapper(),eid);
		return e;
	}
	
	public static int updateEmployee(Employee obj) {
		return jtemp.update("update employee_data set ecity = ?, esalary = ? where eid=?",obj.getEcity(),obj.getEsalary(),obj.getEid());
	}

	public static void main(String [] args) {
		System.out.println(new ShowAllEmployeeLogic().getEmployee(24).display());
	}
}
