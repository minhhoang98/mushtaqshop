package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entity.Employee;
import mushtaq.entity.EmployeeMapper;

@Repository
@Transactional
public class EmployeeDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Employee employee) {
		String sql = "INSERT INTO employee (name,birthday,governmentid,phone,email,address,image,salary) VALUES (?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, employee.getName(),employee.getBirthday(),
				employee.getGovernmentid(),employee.getPhone(),employee.getEmail(),employee.getAddress(),employee.getImage());
	}

	public void delete(int employeeid) {
		String sql = "DELETE FROM employee WHERE employeeid = " + employeeid;
		jdbcTemplate.update(sql);
	}
	
	public void update(Employee employee) {
		String sql = "UPDATE employee SET  name = ?, birthday=? , governmentid=?, phone=?, email=?,"
				+ "address=?,image=?,salary=? WHERE employeeid = ? ";
		jdbcTemplate.update(sql, employee.getName(),employee.getBirthday(),
				employee.getGovernmentid(),employee.getPhone(),employee.getEmail(),employee.getAddress(),employee.getImage(),employee.getEmployeeid());
	}

	public Employee findById(int employeeid) {
		String sql = "SELECT * FROM employee WHERE employeeid = ?";
		return jdbcTemplate.queryForObject(sql, new EmployeeMapper(), employeeid);
	}

	public List<Employee> findAll() {
		String sql = "SELECT * FROM employee";
		return jdbcTemplate.query(sql, new EmployeeMapper());
	}
	


}
