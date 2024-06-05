package contents;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class TipDAO {
	private final SqlSession session;
	
	public TipDAO(SqlSession session) {
		this.session = session;
	}
	
	// 팁 목록 가져오기
	public List<TipVO> getTipList(){
		return session.selectList("contents.TipDAO.getTipList");
	}
	
	// 팁 상세보기
	public TipVO getTip(int num) {
		return session.selectOne("contents.TipDAO.getTip", num);
	}
	
}
