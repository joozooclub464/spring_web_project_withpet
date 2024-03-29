package mapper;
import java.util.List;
import org.apache.ibatis.annotations.*;
import mybatis.Hotel;

public interface HotelMapper {
	@Select("select hotelseq.nextval from dual")
	int max();
	
	@Select("select * from hotel")
	List<Hotel> list();
	
	@Select("select * from hotel where h_num = #{h_num}")
	Hotel selectOne(int h_num);

	@Insert("insert into hotel (h_num, h_name, h_location, h_tel, picture, room_kind1, room_kind2, room_kind3, room_kind4, room_kind5, room_num, park, reserve, wifi, disability, reference_room) "
			+"values(#{h_num},#{h_name},#{h_location},#{h_tel},#{picture},#{room_kind1},#{room_kind2},#{room_kind3},#{room_kind4},#{room_kind5},#{room_num},#{park},#{reserve},#{wifi},#{disability},#{reference_room})")
	int insert(Hotel hotel);
	
	@Update("update hotel set h_tel=#{h_tel}, picture=#{picture}, room_kind1=#{room_kind1}, room_kind2=#{room_kind2}, room_kind3=#{room_kind3}, room_kind4=#{room_kind4}, room_kind5=#{room_kind5}, room_num=#{room_num}, park=#{park}, reserve=#{reserve}, wifi=#{wifi}, disability=#{disability}, reference_room=#{reference_room} where h_num=#{h_num}")
	int update(Hotel hotel);
	
	@Delete("delete from hotel where h_num=#{h_num}")
	int delete(int h_num);
	
	@Select("select * from hotel where h_num in (select h_num from (select h_num, count(h_num) from reservehotel group by h_num order by count(h_num) desc) where rownum <=6)")
	List<Hotel> rank_list();
}