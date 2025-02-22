package mushtaq.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



public class EmployeeMapper implements RowMapper<Employee> {
////
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		Employee employee = new Employee();
		employee.setEmployeeid(rs.getInt("employeeid"));
		employee.setName(rs.getString("name"));
		employee.setBirthday(rs.getDate("birthday"));
		employee.setGovernmentid(rs.getString("governmentid"));
		employee.setPhone(rs.getString("phone"));
		employee.setEmail(rs.getString("email"));
		employee.setAddress(rs.getString("address"));
		employee.setImage(rs.getString("image"));
		return employee;
	}

}
