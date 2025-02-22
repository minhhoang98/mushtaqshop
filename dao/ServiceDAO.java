package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entity.ServiceEntity;
import mushtaq.entity.ServiceMapper;

@Repository
@Transactional
public class ServiceDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public void save(ServiceEntity service) {
		String sql = "INSERT INTO service (servicename,servicedesc,serviceprice) VALUES (?,?,?)";
		jdbcTemplate.update(sql, service.getServicename(),
				service.getServicedesc(),service.getServiceprice());
	}

	public void delete(int serviceid) {
		String sql = "DELETE FROM service WHERE serviceid = " + serviceid;
		jdbcTemplate.update(sql);
	}
	
	public void update(ServiceEntity service) {
		String sql = "UPDATE service SET  servicename = ?, servicedesc=?,serviceprice=?  WHERE serviceid = ? ";
		jdbcTemplate.update(sql, service.getServicename(),service.getServicedesc(), service.getServiceprice(), service.getServiceid());
	}

	public ServiceEntity findById(int id) {
		String sql = "SELECT * FROM service WHERE serviceid = ?";
		return jdbcTemplate.queryForObject(sql, new ServiceMapper(), id);
	}

	public List<ServiceEntity> findAll() {
		String sql = "SELECT * FROM service";
		return jdbcTemplate.query(sql, new ServiceMapper());
	}
	
	public List<ServiceEntity>findService(String name){
		String sql = "SELECT * FROM service WHERE service_name LIKE '%"+name+"%'";
		return jdbcTemplate.query(sql, new ServiceMapper());
	}

}
