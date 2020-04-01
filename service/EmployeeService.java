package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.EmployeeDAO;
import mushtaq.entity.Employee;

@Service
@Transactional
public class EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;
	
	public List<Employee> findAll() {
		return employeeDAO.findAll();
	}

	public Employee findByIdEmployee(int employeeid) {
		return employeeDAO.findById(employeeid);
	}
	
	public void save(Employee employee){
		// validate business
		employeeDAO.save(employee);
	}

	public void update(Employee employee){
		// validate business
		employeeDAO.update(employee);
	}
	
	public void delete(int employeeid){
		// validate business
		employeeDAO.delete(employeeid);
	}
	

}
