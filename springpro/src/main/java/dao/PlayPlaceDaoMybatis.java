package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mapper.HotelMapper;
import mapper.PlayPlaceMapper;
import mybatis.PlayPlace;

@Repository
public class PlayPlaceDaoMybatis {
	Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	SqlSessionTemplate session;

	public int insert(PlayPlace playPlace) {
		int p_num = (Integer) session.getMapper(PlayPlaceMapper.class).max();
		playPlace.setP_num(p_num);
		int count = (Integer) session.getMapper(PlayPlaceMapper.class).insert(playPlace);
		if (count > 0)
			return count;
		else
			return 0;
	}
	/* ========ssong==================== */

	public List<PlayPlace> list(int playid) {
		map.put("playid", playid);
		List<PlayPlace> list = session.getMapper(PlayPlaceMapper.class).list(map);
		return list;
	}

	public int update(PlayPlace playPlace) { //?
		int count = (Integer) session.getMapper(PlayPlaceMapper.class).update(playPlace); //?
		if (count > 0)
			return count;
		else
			return 0;
	}
	
	public PlayPlace selectOne(int p_num) {
		PlayPlace playPlace = session.getMapper(PlayPlaceMapper.class).selectOne(p_num);
		return playPlace;
	}
	
	public int delete(int p_num) {
		int count = (Integer)session.getMapper(PlayPlaceMapper.class).delete(p_num);
		if(count>0) return count;
		else return 0;
	}

	public List<PlayPlace> rank_list() {
		List<PlayPlace> rank_list = session.getMapper(PlayPlaceMapper.class).rank_list();
		return rank_list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
