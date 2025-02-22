package mushtaq.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;


public class CustomerMapper implements RowMapper<Customer>{
	
	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Customer customer = new Customer();
		customer.setCustomerid(rs.getInt("customerid"));
		customer.setName(rs.getString("name"));
		customer.setGovernmentid(rs.getString("governmentid"));
		customer.setAddress(rs.getString("address"));
		customer.setPhone(rs.getString("phone"));
		customer.setEmail(rs.getString("email"));
		customer.setCcnumber(rs.getString("ccnumber"));
		customer.setImage(rs.getString("image"));	
		return customer;
	}
}
