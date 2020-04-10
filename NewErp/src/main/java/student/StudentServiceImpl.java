package student;

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
	
	
	
}
