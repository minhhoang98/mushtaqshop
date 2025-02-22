package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.AccountDao;
import mushtaq.dao.EmployeeDAO;
import mushtaq.dao.RoleDao;
import mushtaq.entity.Account;
import mushtaq.entity.Employee;
import mushtaq.entity.Role;


@Service
@Transactional
public class AccountService {
	@Autowired
	AccountDao dao ;
	@Autowired
	private EmployeeDAO employeeDAO;
	@Autowired
	private RoleDao roleDAO;
	
	public List<Account> findAll() {
		return dao.findAll();
	}

	public Account findByIdhd(int id) {
		return dao.findById(id);
	}
	
	public void save(Account account){
		// validate business
		dao.save(account);
	}
	public List<Employee> listEmployee() {
		return employeeDAO.findAll();
	}
	
	public List<Role> listRole() {
		return roleDAO.findAll();
	}

	public void update(Account account){
		// validate business
		dao.update(account);
	}
	
	public void delete(int id){
		// validate business
		dao.delete(id);
	}
	
	public void deleteEmployee(int employeeid){
		// validate business
		dao.deleteEmployee(employeeid);
	}
	
}
