package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.ReserveClinic;
import mapper.ReserveClinicMapper;


@Repository
public class ReserveClinicDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	public int insert(ReserveClinic reserveClinic) {
		int rc_num = (Integer)session.getMapper(ReserveClinicMapper.class).max();
		reserveClinic.setRc_num(rc_num);
		int count=(Integer)session.getMapper(ReserveClinicMapper.class).insert(reserveClinic);
		if(count>0)	return rc_num;
		else return 0;
	}
	public ReserveClinic selectOne(int rc_num) {
		ReserveClinic reserveClinic = session.getMapper(ReserveClinicMapper.class).selectOne(rc_num);
		return reserveClinic;
	}
	public int update(ReserveClinic reserveClinic) {
		int count=(Integer)session.getMapper(ReserveClinicMapper.class).update(reserveClinic);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int rc_num) {
		int count=(Integer)session.getMapper(ReserveClinicMapper.class).delete(rc_num);
		if(count>0)	return count;
		else return 0;
	}
	public List<ReserveClinic> list(String id) {
		List<ReserveClinic> list = session.getMapper(ReserveClinicMapper.class).list(id);
		return list;
	}
	public List<ReserveClinic> pastList(String id){
		List<ReserveClinic> pastList = session.getMapper(ReserveClinicMapper.class).pastList(id);
		return pastList;
	}
	public int count(String id) {
		int count = session.getMapper(ReserveClinicMapper.class).count(id);
		return count;
	}
	public int pastCount(String id) {
		int pastCount = session.getMapper(ReserveClinicMapper.class).pastCount(id);
		return pastCount;
	}
}