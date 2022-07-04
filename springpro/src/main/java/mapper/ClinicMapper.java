package mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.*;

import mybatis.Clinic;

public interface ClinicMapper {
	@Select("select clinicseq.nextval from dual")
	int max();

	@Select("select * from clinic")
	List<Clinic> list();

	@Select("select * from clinic where c_num = #{c_num}")
	Clinic selectOne(int c_num);

	@Insert("insert into clinic (c_num, c_name, c_location, c_tel, picture, pet_kind, open_hour, park, reserve) "
			+ "values(#{c_num},#{c_name},#{c_location},#{c_tel},#{picture},#{pet_kind},#{open_hour},#{park},#{reserve})")
	int insert(Clinic clinic);

	@Update("update clinic set c_tel=#{c_tel}, picture=#{picture}, pet_kind=#{pet_kind}, park=#{park}, reserve=#{reserve}, open_hour=#{open_hour} where c_num=#{c_num}")
	int update(Clinic clinic);

	@Delete("delete from clinic where c_num=#{c_num}")
	int delete(int c_num);

	@Select("select * from clinic where c_num in (select c_num from (select c_num, count(c_num) from reserveclinic group by c_num order by count(c_num) desc) where rownum <=6)")
	List<Clinic> rank_list();
}