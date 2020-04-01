package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.PaymentDAO;
import mushtaq.dao.PaymentTypeDAO;
import mushtaq.dao.ReceptionDAO;
import mushtaq.dao.RoomStatusDAO;
import mushtaq.dao.RoomTypeDAO;
import mushtaq.dao.ServiceDAO;
import mushtaq.entity.PaymentEntity;
import mushtaq.entity.PaymentTypeEntity;
import mushtaq.entity.Reception;
import mushtaq.entity.RoomStatus;
import mushtaq.entity.RoomType;
import mushtaq.entity.ServiceEntity;

@Service
@Transactional
public class PaymentService {
	@Autowired
	private PaymentDAO paymentDAO;
	@Autowired
	private PaymentTypeDAO paymentTypeDAO;
	@Autowired
	private ReceptionDAO receptionDAO;
	public List<PaymentEntity> findAll() {
		return paymentDAO.findAll();
	}

	public PaymentEntity findByIdhd(int id) {
		return paymentDAO.findById(id);
	}
	public List<PaymentTypeEntity> listPaymentType() {
		return paymentTypeDAO.findAll();
	}
	
	public List<Reception> listReception() {
		return receptionDAO.findAll();
	}
	public void save(PaymentEntity payment){
		// validate business
		paymentDAO.save(payment);
	}

	public void update(PaymentEntity payment){
		// validate business
		paymentDAO.update(payment);
	}
	
	public void delete(int id){
		// validate business
		paymentDAO.delete(id);
	}
	
}
