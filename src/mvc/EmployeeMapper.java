package mvc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapper implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet result, int arg1) throws SQLException {

		Employee obj = new Employee();
		obj.setEid(result.getInt(1));
		obj.setEname(result.getString(2));
		obj.setEcity(result.getString(3));
		obj.setEsalary(result.getInt(4));
		return obj;
	}
	
	

}
