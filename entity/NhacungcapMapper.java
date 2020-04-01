package mushtaq.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class NhacungcapMapper implements RowMapper<Nhacungcap> {

	public Nhacungcap mapRow(ResultSet rs, int rowNum) throws SQLException {
		Nhacungcap nhacungcap = new Nhacungcap();
		nhacungcap.setId(rs.getInt("id"));
		nhacungcap.setTennhacungcap(rs.getString("tennhacungcap"));
		nhacungcap.setDiachi(rs.getString("diachi"));
		return nhacungcap;
	}

}
