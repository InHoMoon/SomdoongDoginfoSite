package somdoong.mypage.dao.face;

import java.util.List;

import somdoong.mypage.dto.Myboard;
import somdoong.util.Paging;

public interface MyboardDao {

	

//	public List<Freeboard> listF(Freeboard freeboard);
//
//	public List<Showboard> listS(Showboard showboard);

	public List<Myboard> listAll(Paging paging);

	public int selectCntAll(Myboard myboard);
	
}
