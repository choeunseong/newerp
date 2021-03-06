package student;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import comm.CommVO;
import member.MemberService;
import member.MemberVO;
import paging.PagingVO;

@Controller
public class StudentController {
	
	private StudentService studentService;
	private MemberService memberService;
	
	public final String MAIN_PATH = "/WEB-INF/views/member/";
	
	public StudentController() {}
	
	public StudentController(StudentService studentService, MemberService memberService) {
		super();
		this.studentService = studentService;
		this.memberService = memberService;
	}

	/*
	 * @RequestMapping("/member_cnt.do") public ModelAndView MemberCnt() {
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * return mv; }
	 */
	
	// 학생등록 화면 이동
	@RequestMapping("/studentForm.do")
	public ModelAndView studentForm() {
		ModelAndView mv = new ModelAndView();
		
		List<CommVO> companyList = memberService.selectCompany();	// 본/지사 구하기
		
		mv.addObject("companyList", companyList);
		mv.setViewName(MAIN_PATH + "student_form.jsp");
		
		return mv;
	}
	
	// 학생목록 화면 이동
	@RequestMapping("/student/studentList.do")
	public ModelAndView studentList() {
		ModelAndView mv = new ModelAndView();
		
		List<CommVO> companyList = memberService.selectCompany();	// 본/지사 구하기
		
		mv.addObject("companyList", companyList);
		mv.setViewName(MAIN_PATH + "student.jsp");
		
		return mv;
	}
	
	// 원생등록
	@RequestMapping(value = "/student/stuInsert.do", method = RequestMethod.POST)
	@ResponseBody
	public Map stuInsert(StudentVO stuVO, HttpServletRequest request) {
		Map map = new HashMap();
		
		String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
		System.out.println(savePath);
//		System.out.println("user_nm = " + vo.getUser_nm());
		String user_pict 	= fileUpload( stuVO.getFile_stu_pict(), savePath );
		
		stuVO.setStu_pict(user_pict);
		
		int result = studentService.stuInsert(stuVO);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
	// 학생정보 수정
	@RequestMapping(value = "/student/stuUpdate.do", method = RequestMethod.POST)
	@ResponseBody
	public Map stuUpdate(StudentVO stuVO, HttpServletRequest request) {
		Map map = new HashMap();
		
		if(stuVO.getFile_stu_pict() != null) {
			String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
			System.out.println(savePath);
	//		System.out.println("user_nm = " + vo.getUser_nm());
			String user_pict 	= fileUpload( stuVO.getFile_stu_pict(), savePath );
			
			stuVO.setStu_pict(user_pict);
		}
		
		int result = studentService.stuUpdate(stuVO);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}

//	================================파일업로드======================================
	private String fileUpload( MultipartFile multipartFile, String savePath ) {
		String 	fileName = null;
		String 	originFilename 	= multipartFile.getOriginalFilename();
		
		if( originFilename == null || originFilename.equals("") ) {
			return "";
		}
		
		try {
			// 파일 정보
			Long size = multipartFile.getSize();
			
			// 서버에서 저장 할 파일 이름
			fileName = genSaveFileName(originFilename);
			writeFile(multipartFile, fileName, savePath);
		}
		catch (IOException e) {
			throw new RuntimeException(e);
		}
		
		return fileName;
	}
		
	private String genSaveFileName(String extName) {
		String fileName = "";
		
		Calendar calendar = Calendar.getInstance();
		fileName += calendar.get(Calendar.YEAR);
		fileName += calendar.get(Calendar.MONTH)+1;
		fileName += calendar.get(Calendar.DATE);
		fileName += calendar.get(Calendar.HOUR);
		fileName += calendar.get(Calendar.MINUTE);
		fileName += calendar.get(Calendar.SECOND);
		fileName += calendar.get(Calendar.MILLISECOND);
		fileName += extName;
		
		return fileName;
	}

	private boolean writeFile(MultipartFile multipartFile, String saveFileName, String savePath)throws IOException{
		boolean result = false;

		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(savePath + "/" + saveFileName);
		fos.write(data);
		fos.close();
		System.out.println("121231212 = "+data);
		return result;
		
	}
//	================================파일업로드======================================
	
	
	// 학생목록 리스트
	@RequestMapping(value = "/student/stuSearchList.do", method = RequestMethod.POST)
	public ModelAndView stuSearchList(StudentVO stuVo, @RequestParam(defaultValue = "1") int pageNo) {
		ModelAndView mv = new ModelAndView();
		System.out.println("111111111111 = " + stuVo.getPart());
		int cnt = studentService.stuSearchListCnt(stuVo);
		
		PagingVO paging = new PagingVO(cnt, pageNo);
		
		stuVo.setStartIndex(paging.getStartIndex());
		stuVo.setCurrentPerPage(paging.getPageSize());
		
		List<StudentVO> list = studentService.stuSearchList(stuVo);
		
		mv.addObject("list", list);
		mv.addObject("cnt", cnt);
		mv.addObject("paging", paging);
		mv.setViewName(MAIN_PATH + "student_search.jsp");
		
		return mv;
	}
	
	// 본/지사별 담당자 검색
	@RequestMapping(value = "student/emplSearch.do", method = RequestMethod.POST)
	@ResponseBody
	public Map emplSearch(MemberVO vo, Model model) {
		Map map = new HashMap();
		
		List<MemberVO> list = memberService.emplSearch(vo);
		
		map.put("list", list);
		
		return map;
	}
	
	// 학생정보 삭제
	@RequestMapping(value = "student/stuDelete.do", method = RequestMethod.POST)
	@ResponseBody
	public Map stuDelete(StudentVO stuVo) {
		Map map = new HashMap();
		
		int result = studentService.stuDelete(stuVo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
}
