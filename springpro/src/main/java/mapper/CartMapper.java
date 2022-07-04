package mapper;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.*;

import mybatis.Cart;
import mybatis.Goods;
import mybatis.Hotel;

public interface CartMapper {
	
	@Select("select cartseq.nextval from dual")
	int max();

	@Select("select * from cart where id=#{id}")
	List<Cart> list(String id);
	
	@Select("select * from cart where cartId = #{cartId}")
	Cart selectOne(int cartId);
	
	
	@Insert("insert into cart (cartId, id, gbsNum, gbsName, gbsPrice, cartStock, picture)"
			+"values(#{cartId},#{id},#{gbsNum},#{gbsName},#{gbsPrice},#{cartStock}, #{picture})")
	int insert(Cart cart);
	
	@Delete("delete from cart where cartId=#{cartId}")
	int delete(int cartId);
}