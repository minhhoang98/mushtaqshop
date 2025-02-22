package mushtaq.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class PaymentMapper implements  RowMapper<PaymentEntity> {
	public PaymentEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		PaymentEntity payment = new PaymentEntity();
		payment.setPaymentid(rs.getInt("paymentid"));
		payment.setPaymenttypeid(rs.getInt("paymenttypeid"));
		payment.setReceptionid(rs.getInt("receptionid"));
		payment.setPaymentamount(rs.getDouble("paymentamount"));
		payment.setPaymentdate(rs.getDate("paymentdate"));
		payment.setRoomprice(rs.getDouble("roomprice"));
		payment.setRoomnumber(rs.getString("roomnumber"));
		payment.setTienthua(rs.getDouble("tienthua"));
		return payment;
	}	
}
