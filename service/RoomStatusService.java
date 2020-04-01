package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.RoomStatusDAO;
import mushtaq.entity.RoomStatus;



@Service
@Transactional
public class RoomStatusService {
	@Autowired
	private RoomStatusDAO roomStatusDAO;
	
	public List<RoomStatus> findAll() {
		return roomStatusDAO.findAll();
	}

	public RoomStatus findByIdRoomStatus(int roomstatusid) {
		return roomStatusDAO.findByIdRoomStatus(roomstatusid);
	}
	
	public void save(RoomStatus roomstatus){
		// validate business
		roomStatusDAO.save(roomstatus);
	}

	public void update(RoomStatus roomstatus){
		// validate business
		roomStatusDAO.update(roomstatus);
	}
	
	public void delete(int roomstatusid){
		// validate business
		roomStatusDAO.delete(roomstatusid);
	}
	

}
