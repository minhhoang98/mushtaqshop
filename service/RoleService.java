package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.RoleDao;
import mushtaq.entity.Role;

@Service
@Transactional
public class RoleService {
	@Autowired
	RoleDao dao ;
	public List<Role> findAll() {
		return dao.findAll();
	}

	public Role findById(int id) {
		return dao.findById(id);
	}
	
	public void save(Role role){
		// validate business
		dao.save(role);
	}

	public void update(Role role){
		// validate business
		dao.update(role);
	}
	
	public void delete(int roleid){
		// validate business
		dao.delete(roleid);
	}

}
