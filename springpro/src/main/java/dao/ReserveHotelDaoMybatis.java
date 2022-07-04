package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.ReserveHotel;
import mapper.ReserveHotelMapper;

@Repository
public class ReserveHotelDaoMybatis {
	@Autowired
	SqlSessionTemplate session;
	public int insert(ReserveHotel reserveHotel) {
		int rh_num = (Integer)session.getMapper(ReserveHotelMapper.class).max();
		reserveHotel.setRh_num(rh_num);
		int count=(Integer)session.getMapper(ReserveHotelMapper.class).insert(reserveHotel);
		if(count>0)	return rh_num;
		else return 0;
	}
	public ReserveHotel selectOne(int rh_num) {
		ReserveHotel reserveHotel = session.getMapper(ReserveHotelMapper.class).selectOne(rh_num);
		return reserveHotel;
	}
	public int update(ReserveHotel reserveHotel) {
		int count=(Integer)session.getMapper(ReserveHotelMapper.class).update(reserveHotel);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int rh_num) {
		int count=(Integer)session.getMapper(ReserveHotelMapper.class).delete(rh_num);
		if(count>0)	return count;
		else return 0;
	}
	public List<ReserveHotel> list(String id) {
		List<ReserveHotel> list = session.getMapper(ReserveHotelMapper.class).list(id);
		return list;
	}
	public List<ReserveHotel> pastList(String id){
		List<ReserveHotel> pastList = session.getMapper(ReserveHotelMapper.class).pastList(id);
		return pastList;
	}
	public int count(String id) {
		int count = session.getMapper(ReserveHotelMapper.class).count(id);
		return count;
	}
	public int pastCount(String id) {
		int pastCount = session.getMapper(ReserveHotelMapper.class).pastCount(id);
		return pastCount;
	}
}