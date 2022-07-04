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
	int insert(PlayPlace playPlace); // # : ""�ȿ� �ִ� ���̰�, $ : ""���� �ϴ°�.

	@Select({ "<script>", "select * from playPlace", "<trim prefix = 'where' prefixOverrides = 'AND'>",
			"<if test = 'playid != null'> and PLAYID = #{playid}</if>", "</trim>", "</script>" })
	List<PlayPlace> list(Map<String, Object> map); // List��� ���̺� PlayPlace �׸� list�� �����ǵ� list�� select * from playplace
													// �긦 �����ͼ� ������.

	@Select("select * from playPlace where p_num = #{p_num}")
	PlayPlace selectOne(int p_num);

	@Update("update playPlace set p_img1=#{p_img1}, p_img2=#{p_img2}, p_img3=#{p_img3}, p_img4=#{p_img4}, p_img5=#{p_img5}, p_img6=#{p_img6}, content=#{content}, p_tel=#{p_tel}, caution=#{caution}, open_hour=#{open_hour}  where p_num=#{p_num}")
	int update(PlayPlace playPlace); // set : � �÷��� � ������ �ٲٰڴٰ� �ϳ��� ����ִ°�
	// playPlace���� � ������ ������Ʈ ���� ����ؼ� ����. �����̶�, ����, ��ȭ��ȣ�� ���� �����ϰ� ����.

	@Delete("delete from playPlace where p_num=#{p_num}")
	int delete(int p_num);

	@Select("select * from playplace where rownum <= 6")
	List<PlayPlace> rank_list();

}
