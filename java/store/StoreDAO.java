package store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class StoreDAO {
private final SqlSession session;
	
	public StoreDAO(SqlSession session) {
		this.session = session;
	}

	public List<StoreVO> getStoreList() {
		return session.selectList("store.StoreDAO.getStoreList");
	}
	
	public StoreVO getStore(int searchNo) {
		return session.selectOne("store.StoreDAO.getStore", searchNo);
	}
	
	
}
