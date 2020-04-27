package student;

import java.util.List;

public class StudentServiceImpl implements StudentService {
	private StudentDAO studentDAO;

	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}
	
	// 원생등록
	@Override
	public int stuInsert(StudentVO stuVO) {
		return studentDAO.stuInsert(stuVO);
	}
	
	// 학생목록 리스트
	@Override
	public List<StudentVO> stuSearchList(StudentVO stuVo) {
		return studentDAO.stuSearchList(stuVo);
	}

	// 학생목록 리스트 cnt
	@Override
	public int stuSearchListCnt(StudentVO stuVo) { 
		return studentDAO.stuSearchListCnt(stuVo);
	}

	// 학생정보수정
	@Override
	public int stuUpdate(StudentVO stuVO) {
		return studentDAO.stuUpdate(stuVO);
	}

	// 학생정보 삭제
	@Override
	public int stuDelete(StudentVO stuVo) {
		return studentDAO.stuDelete(stuVo);
	}
	
	
	
}
