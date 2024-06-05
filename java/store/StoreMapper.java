package store;

import java.util.List;

import common.SearchVO;

public interface StoreMapper {
	int getStoreListCount(SearchVO vo);
	List<StoreVO> getStoreList(SearchVO vo);
	StoreVO getStore(int searchNo);
	
}
