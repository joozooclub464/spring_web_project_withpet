package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import mybatis.C_Review;
import mybatis.Clinic;
import mybatis.H_Review;

public interface C_ReviewMapper {

  @Select("select * from review where c_num = #{c_num}")
  List<C_Review> c_list(int c_num);

  @Select("select reviewseq.nextval from dual")
  int max();

  // 리뷰 카운트
	/*
	 * @Select("select * from review where c_num = #{c_num}") C_Review
	 * c_selectOne(int c_num);
	 * 
	 * @Select("select * from review where id = #{id}") List<C_Review>
	 * id_selectOne(String id);
	 */
  @Select("select count(*) from review where id=#{id}")
  int count(String id);

  @Select("select * from review where c_num = #{c_num}")
  C_Review c_selectOne(int c_num);

  @Select("select * from review where id = #{id}")
  List<C_Review> id_selectOne(String id);

  // 리뷰 리스트

  @Select("select r.id, c.c_name, r.rv_desc from clinic c, review r where r.c_num=c.c_num and r.id = #{id}")
  List<C_Review> id_c_review_by_id(String id);

  //boardpetseq.nextval

  @Insert("insert into review (rv_num, id, rv_desc, c_num)"
      + "values(#{rv_num}, #{id}, #{rv_desc}, #{c_num})")
  int c_insert(C_Review review);

  @Update("update review set rv_desc=#{rv_desc} where rv_num=#{rv_num}")
  int update(C_Review review);

  @Delete("delete from review where rv_num=#{rv_num}")
  int delete(int rv_num);
  
//	리뷰 불러오기
  @Select("select * from review where c_num =#{c_num}")
  List<C_Review> review_list(int c_num);
	
	
}
