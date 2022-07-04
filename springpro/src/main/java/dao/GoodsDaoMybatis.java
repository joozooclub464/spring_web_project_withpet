package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.Cart;
import mybatis.Goods;
import mapper.GoodsMapper;

@Repository
public class GoodsDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	SqlSessionTemplate session;
	
	public int insert(Goods goods) {
		int gbsNum = (Integer)session.getMapper(GoodsMapper.class).max();
		goods.setGbsNum(gbsNum);
		int count=(Integer)session.getMapper(GoodsMapper.class).insert(goods);
		if(count>0)	return count;
		else return 0;
	}
	public Goods selectOne(int gbsNum) {
		Goods goods = session.getMapper(GoodsMapper.class).selectOne(gbsNum);
		return goods;
	}
	public int update(Goods goods) {
		int count=(Integer)session.getMapper(GoodsMapper.class).update(goods);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int gbsNum) {
		int count=(Integer)session.getMapper(GoodsMapper.class).delete(gbsNum);
		if(count>0)	return count;
		else return 0;
	}
	public List<Goods> list() {
		List<Goods> list = session.getMapper(GoodsMapper.class).list();
		return list;
	}
}