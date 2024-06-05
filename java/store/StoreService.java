package store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;

public class StoreService {
	private final StoreMapper mapper;
	
	public StoreService(SqlSession session) {
		this.mapper = session.getMapper(StoreMapper.class);
	}
	public int getStoreListCount(SearchVO vo) {
		return mapper.getStoreListCount(vo);
	}
	
	public List<StoreVO> getStoreList(SearchVO vo) {
		return mapper.getStoreList(vo);
	}
	
	public StoreVO getStore(int searchNo) {
		return mapper.getStore(searchNo);
	}
	
	
}
