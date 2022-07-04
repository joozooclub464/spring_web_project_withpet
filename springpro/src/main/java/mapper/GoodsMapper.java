package mapper;
import java.util.List;
import org.apache.ibatis.annotations.*;

import mybatis.Cart;
import mybatis.Goods;

public interface GoodsMapper {
	@Select("select goodsseq.nextval from dual")
	int max();
	
	@Select("select * from goods where gbsNum = #{gbsNum}")
	Goods selectOne(int gdsNum);
	
	@Select("select * from goods")
	List<Goods> list();
	
	@Insert("insert into goods (gbsNum, gbsName, gbsPrice, gbsDes, picture) "
			+"values(#{gbsNum},#{gbsName},#{gbsPrice},#{gbsDes},#{picture})")
	int insert(Goods goods);
	
	@Update("update goods set gbsPrice=#{gbsPrice}, gbsDes=#{gbsDes}, gbsName=#{gbsName} where gbsNum=#{gbsNum}")
	int update(Goods goods);
	
	@Delete("delete from goods where gbsNum=#{gbsNum}")
	int delete(int gdsNum);
}