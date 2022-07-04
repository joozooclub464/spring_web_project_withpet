package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import mybatis.PlayPlace;

public interface PlayPlaceMapper {
	@Select("select playplaceseq.nextval from dual")
	int max();

	@Insert("insert into playplace (p_num, p_name, p_location, p_tel, park, p_img1, p_img2, p_img3, p_img4, p_img5, p_img6, content, playid, open_hour, caution) "
			+ "values(#{p_num}, #{p_name}, #{p_location}, #{p_tel}, #{park}, #{p_img1}, #{p_img2}, #{p_img3}, #{p_img4}, #{p_img5}, #{p_img6}, #{content}, #{playid}, #{open_hour}, #{caution})")
	int insert(PlayPlace playPlace); // # : ""안에 있는 값이고, $ : ""없이 하는것.

	@Select({ "<script>", "select * from playPlace", "<trim prefix = 'where' prefixOverrides = 'AND'>",
			"<if test = 'playid != null'> and PLAYID = #{playid}</if>", "</trim>", "</script>" })
	List<PlayPlace> list(Map<String, Object> map); // List라는 테이블에 PlayPlace 항목에 list를 넣을건데 list는 select * from playplace
													// 얘를 가져와서 넣을것.

	@Select("select * from playPlace where p_num = #{p_num}")
	PlayPlace selectOne(int p_num);

	@Update("update playPlace set p_img1=#{p_img1}, p_img2=#{p_img2}, p_img3=#{p_img3}, p_img4=#{p_img4}, p_img5=#{p_img5}, p_img6=#{p_img6}, content=#{content}, p_tel=#{p_tel}, caution=#{caution}, open_hour=#{open_hour}  where p_num=#{p_num}")
	int update(PlayPlace playPlace); // set : 어떤 컬럼을 어떤 값으로 바꾸겠다고 하나씩 잡아주는것
	// playPlace에서 어떤 정보를 업데이트 할지 고민해서 넣음. 사진이랑, 내용, 전화번호를 변경 가능하게 했음.

	@Delete("delete from playPlace where p_num=#{p_num}")
	int delete(int p_num);

	@Select("select * from playplace where rownum <= 6")
	List<PlayPlace> rank_list();

}
