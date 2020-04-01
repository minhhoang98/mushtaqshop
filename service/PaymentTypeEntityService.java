package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.PaymentDAO;
import mushtaq.dao.PaymentTypeDAO;
import mushtaq.dao.ServiceDAO;
import mushtaq.entity.PaymentTypeEntity;
import mushtaq.entity.ServiceEntity;

@Service
@Transactional
public class PaymentTypeEntityService {
	@Autowired
	private PaymentTypeDAO paymentTypeDAO;
	public List<PaymentTypeEntity> findAll() {
		return paymentTypeDAO.findAll();
	}
	public PaymentTypeEntity findByIdhd(int id) {
		return paymentTypeDAO.findById(id);
	}
	
	public void save(PaymentTypeEntity paymentType){
		// validate business
		paymentTypeDAO.save(paymentType);
	}

	public void update(PaymentTypeEntity paymentType){
		// validate business
		paymentTypeDAO.update(paymentType);
	}
	
	public void delete(int paymenttypeid){
		// validate business
		paymentTypeDAO.delete(paymenttypeid);
	}
	public void deletepayment(int paymenttypeid){
		// validate business
		paymentTypeDAO.deletePayment(paymenttypeid);
	}
	public void deletepaymentt(int paymenttypeid){
		// validate business
		paymentTypeDAO.deletePayment(paymenttypeid);
	}
	public List<PaymentTypeEntity> searchEmployee(String name) {
		return paymentTypeDAO.findPaymentType(name);
	}
}
