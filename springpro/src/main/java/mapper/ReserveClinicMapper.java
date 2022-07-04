package mapper;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.*;

import mybatis.ReserveClinic;

public interface ReserveClinicMapper {
	@Select("select reserveclinicseq.nextval from dual")
	int max();
	
	@Select("select count(*) from reserveclinic where id=#{id} and date1 > sysdate")
	int count(String id);
	
	@Select("select count(*) from reserveclinic where id=#{id} and date1 < sysdate")
	int pastCount(String id);
	
	@Select("select * from reserveclinic where id=#{id} and date1 > sysdate")
	List<ReserveClinic> list(String id);
	
	@Select("select * from ReserveClinic where id=#{id} and date1 < sysdate")
	List<ReserveClinic> pastList(String id);
	
	@Select("select * from reserveclinic where rc_num = #{rc_num}")
	ReserveClinic selectOne(int rc_num);
	
	@Insert("insert into reserveclinic (rc_num, c_num, c_name, c_tel, id, name, date1, time1, pet_kind, pet_name, pet_age, problem) "
			+"values(#{rc_num},#{c_num},#{c_name},#{c_tel},#{id},#{name},#{date1},#{time1},#{pet_kind},#{pet_name},#{pet_age},#{problem})")
	int insert(ReserveClinic reserveClinic);
	
	@Update("update reserveclinic set date1=#{date1}, time1=#{time1}, kind=#{kind}, pet_name=#{pet_name}, problem=#{problem} where rc_num=#{rc_num}")
	int update(ReserveClinic reserveClinic);
	
	@Delete("delete from reserveclinic where rc_num=#{rc_num}")
	int delete(int rc_num);
}