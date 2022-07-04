package mapper;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;
import mybatis.ReserveHotel;

public interface ReserveHotelMapper {
	@Select("select reservehotelseq.nextval from dual")
	int max();
	
	@Select("select count(*) from reservehotel where id=#{id} and e_date > sysdate")
	int count(String id);
	
	@Select("select count(*) from reservehotel where id=#{id} and e_date < sysdate")
	int pastCount(String id);
	
	@Select("select * from reservehotel where id=#{id} and e_date > sysdate")
	List<ReserveHotel> list(String id);
	
	@Select("select * from reserveHotel where id=#{id} and e_date < sysdate")
	List<ReserveHotel> pastList(String id);
	
	@Select("select * from reservehotel where rh_num = #{rh_num}")
	ReserveHotel selectOne(int rh_num);
	
	@Insert("insert into reservehotel (rh_num, h_num, h_name, h_tel, room_kind, id, name, num, s_date, e_date, pet_kind, pet_num, content) "
			+"values(#{rh_num},#{h_num},#{h_name},#{h_tel},#{room_kind},#{id},#{name},#{num},#{s_date},#{e_date},#{pet_kind},#{pet_num},#{content})")
	int insert(ReserveHotel reserveHotel);
	
	@Update("update reservehotel set room_kind=#{room_kind}, num=#{num}, s_date=#{s_date}, e_date=#{e_date}, pet_kind=#{pet_kind}, pet_num=#{pet_num}, content=#{content} where rh_num=#{rh_num}")
	int update(ReserveHotel reserveHotel);
	
	@Delete("delete from reservehotel where rh_num=#{rh_num}")
	int delete(int rh_num);
}