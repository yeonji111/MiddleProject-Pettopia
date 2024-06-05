package contents;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;


public class TipService {
	private final TipMapper mapper;
	public TipService(SqlSession session) {
		this.mapper = session.getMapper(TipMapper.class);
	}
	public int getTipListCount(SearchVO vo) {
		return mapper.getTipListCount(vo);
	}
	public List<TipVO>getTipList(SearchVO vo){
		return mapper.getTipList(vo);
	}
	public TipVO getTip(int num) {
		return mapper.getTip(num);
	}
	
	
	
	
	
}
