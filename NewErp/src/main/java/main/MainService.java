package main;

import java.util.Map;

public interface MainService {

	MainVO loginCheck(MainVO vo);

	int waitCnt(String user_id);	// 승인대기 회원 수
	
}
