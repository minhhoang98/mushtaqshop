package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.ReservationDAO;
import mushtaq.entity.Customer;
import mushtaq.entity.Reservation;

@Service
@Transactional
public class ReservationService {
	@Autowired ReservationDAO reservationDAO;
	
	public List<Reservation> findAll() {
		return reservationDAO.findAll();
	}


	public Reservation findById(int reservationid) {
		return reservationDAO.findById(reservationid);
	}
	
	public void save(Reservation reservation){
		// validate business
		reservationDAO.save(reservation);
	}

	public void update(Reservation reservation){
		// validate business
		reservationDAO.update(reservation);
	}
	
	public void delete(int reservationid){
		// validate business
		reservationDAO.delete(reservationid);
	}
	public void deleteRstByCtmId(int customerid){
		// validate business
		reservationDAO.deleteRstByCtmId(customerid);
	}
	
	public void deleteRT(int roomtypeid){
		// validate business
		reservationDAO.deleteRT(roomtypeid);
	}
}
