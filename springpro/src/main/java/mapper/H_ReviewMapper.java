package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import mybatis.H_Review;

public interface H_ReviewMapper {

  @Select("select * from review where h_num = #{h_num}")
  List<H_Review> h_list(int h_num);

  @Select("select reviewseq.nextval from dual")
  int max();

  // 府轰 墨款飘
  @Select("select count(*) from review where id=#{id}")
  int count(String id);

  @Select("select * from review where h_num = #{h_num}")
  H_Review h_selectOne(int h_num);

  @Select("select * from review where id = #{id}")
  List<H_Review> id_selectOne(String id);

  // 府轰 府胶飘

  @Select("select r.id, h.h_name, r.rv_desc from review r, hotel h where r.h_num=h.h_num and r.id = #{id}")
  List<H_Review> id_h_review_by_id(String id);

  //

  @Insert("insert into review (rv_num, id, rv_desc, h_num)"
      + "values(#{rv_num}, #{id}, #{rv_desc}, #{h_num})")
  int h_insert(H_Review review);

  @Update("update review set rv_desc=#{rv_desc} where rv_num=#{rv_num}")
  int update(H_Review review);

  @Delete("delete from review where rv_num=#{rv_num}")
  int delete(int rv_num);
}
