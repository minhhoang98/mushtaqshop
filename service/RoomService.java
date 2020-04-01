package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.RoomDAO;
import mushtaq.dao.RoomStatusDAO;
import mushtaq.dao.RoomTypeDAO;
import mushtaq.entity.Room;
import mushtaq.entity.RoomStatus;
import mushtaq.entity.RoomType;






@Service
@Transactional
public class RoomService {
	@Autowired
	private RoomDAO roomDAO;
	@Autowired
	private RoomTypeDAO roomTypeDAO;
	@Autowired
	private RoomStatusDAO roomStatusDAO;
	
	public List<Room> findAll() {
		return roomDAO.findAll();
	}

	public Room findByIdRoom(int roomid) {
		return roomDAO.findByIdRoom(roomid);
	}
	public List<RoomType> listRoomType() {
		return roomTypeDAO.findAll();
	}
	
	public List<RoomStatus> listRoomStatus() {
		return roomStatusDAO.findAll();
	}
	
	public void save(Room room){
		// validate business
		roomDAO.save(room);
	}

	public void update(Room room){
		// validate business
		roomDAO.update(room);
	}
	
	public void delete(int roomid){
		// validate business
		roomDAO.delete(roomid);
	}
	public void deleteRoom(int roomstatusid){
		// validate business
		roomDAO.deleteRoom(roomstatusid);
	}
	
	public void deleteRoomType(int roomtypeid){
		// validate business
		roomDAO.deleteRoomType(roomtypeid);
	}


}
