package mushtaq.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class AccountMapper implements RowMapper<Account> {

	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account ac = new Account();
		ac.setAccountid(rs.getInt("accountid"));
		ac.setEmployeeid(rs.getInt("employeeid"));
		ac.setRoleid(rs.getInt("roleid"));
		ac.setUsername(rs.getString("username"));
		ac.setPassword(rs.getString("password"));
		ac.setName(rs.getString("name"));
		ac.setRolename(rs.getString("rolename"));
		return ac;
	}

}
