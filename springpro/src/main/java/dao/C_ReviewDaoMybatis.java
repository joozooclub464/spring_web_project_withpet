package dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import mapper.C_ReviewMapper;
import mybatis.C_Review;

@Repository
public class C_ReviewDaoMybatis {

  @Autowired
  SqlSessionTemplate session;


  public List<C_Review> id_c_review_by_id(String id) {
    List<C_Review> list = session.getMapper(C_ReviewMapper.class).id_c_review_by_id(id);
    return list;
  }


  public List<C_Review> c_list(int c_num) { // limit =3

    List<C_Review> list = session.getMapper(C_ReviewMapper.class).c_list(c_num);
    return list;
  }

  public List<C_Review> id_selectOne(String id) {

    List<C_Review> list = session.getMapper(C_ReviewMapper.class).id_selectOne(id);
    return list;
  }



  public boolean c_insert(C_Review review) {

    int rv_num = session.getMapper(C_ReviewMapper.class).max();
    review.setRv_num(rv_num);
    int count = session.getMapper(C_ReviewMapper.class).c_insert(review);
    System.out.println(review);

    if (count > 0)
      return true;
    else
      return false;

  }

  public C_Review c_selectOne(int c_num) {

    C_Review review = session.getMapper(C_ReviewMapper.class).c_selectOne(c_num);
    return review;
  }

  public boolean update(C_Review review) {

    int count = session.getMapper(C_ReviewMapper.class).update(review);

    if (count > 0)
      return true;
    else
      return false;
  }


  public boolean delete(int rv_num) {

    int count = session.getMapper(C_ReviewMapper.class).delete(rv_num);

    if (count > 0)
      return true;
    else
      return false;
  }

} // end class
