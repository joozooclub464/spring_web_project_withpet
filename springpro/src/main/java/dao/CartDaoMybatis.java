package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.Cart;
import mapper.CartMapper;

@Repository
public class CartDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	
	//카트담기?
	public int insert(Cart cart) {
		int cartId = (Integer)session.getMapper(CartMapper.class).max();
		cart.setCartId(cartId);
		int count=(Integer)session.getMapper(CartMapper.class).insert(cart);
		if(count>0)	return count;
		else return 0;
	}
	public Cart selectOne(int cartId) {
		Cart cart = session.getMapper(CartMapper.class).selectOne(cartId);
		return cart;
	}
	
	public int delete(int cartId) {
		int count=(Integer)session.getMapper(CartMapper.class).delete(cartId);
		if(count>0)	return count;
		else return 0;
	}
	public List<Cart> list(String id) {
		List<Cart> list = session.getMapper(CartMapper.class).list(id);
		return list;
	}
	
}