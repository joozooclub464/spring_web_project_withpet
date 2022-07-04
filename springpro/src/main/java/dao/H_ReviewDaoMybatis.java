package dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import mapper.H_ReviewMapper;
import mybatis.H_Review;

@Repository
public class H_ReviewDaoMybatis {
  private static Map<String, Object> map = new HashMap<String, Object>();

  @Autowired
  SqlSessionTemplate session;

  public int h_rv_count(String id) {
    int count = session.getMapper(H_ReviewMapper.class).count(id);
    return count;
  }


  public List<H_Review> id_h_review_by_id(String id) {
    List<H_Review> list = session.getMapper(H_ReviewMapper.class).id_h_review_by_id(id);
    return list;
  }

  public List<H_Review> h_list(int h_num) { // limit =3

    List<H_Review> list = session.getMapper(H_ReviewMapper.class).h_list(h_num);
    return list;
  }


  public List<H_Review> id_selectOne(String id) {

    List<H_Review> list = session.getMapper(H_ReviewMapper.class).id_selectOne(id);
    return list;
  }

  public boolean h_insert(H_Review review) {
    int rv_num = session.getMapper(H_ReviewMapper.class).max();
    System.out.println(rv_num);
    review.setRv_num(rv_num);
    int count = session.getMapper(H_ReviewMapper.class).h_insert(review);
    System.out.println(review);
    if (count > 0)
      return true;
    else
      return false;
  }

  public H_Review h_selectOne(int h_num) {

    H_Review review = session.getMapper(H_ReviewMapper.class).h_selectOne(h_num);
    return review;
  }


  public boolean update(H_Review review) {

    int count = session.getMapper(H_ReviewMapper.class).update(review);

    if (count > 0)
      return true;
    else
      return false;
  }


  public boolean delete(int rv_num) {

    int count = session.getMapper(H_ReviewMapper.class).delete(rv_num);

    if (count > 0)
      return true;
    else
      return false;
  }

} // end class
