package member;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import comm.CommVO;
import paging.PagingVO;

@Controller
public class MemberController {
	
	private MemberService memberService;
	public final String MAIN_PATH = "/WEB-INF/views/member/";
	public final String MANA_PATH = "/WEB-INF/views/management/";
	
	public MemberController() {}
	
	public MemberController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}

	/*
	 * @RequestMapping("/member_cnt.do") public ModelAndView MemberCnt() {
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * return mv; }
	 */
	
	// 회원가입 화면 이동
	@RequestMapping("/signUpView.do")
	public ModelAndView signUpView() {
		ModelAndView mv = new ModelAndView();
		
		List<CommVO> companyList = memberService.selectCompany();	// 본/지사 구하기
		
		mv.addObject("companyList", companyList);
		mv.setViewName(MAIN_PATH + "sign_up.jsp");
		
		return mv;
	}
	
	// 학생등록 화면 이동
	@RequestMapping("/studentForm.do")
	public ModelAndView studentForm() {
		ModelAndView mv = new ModelAndView();
		
		List<CommVO> companyList = memberService.selectCompany();	// 본/지사 구하기
		
		mv.addObject("companyList", companyList);
		mv.setViewName(MAIN_PATH + "student_form.jsp");
		
		return mv;
	}
	
	/*
	 * // 회원가입하기
	 * 
	 * @RequestMapping("/memberInsert.do") public ModelAndView memberInsert(MemberVO
	 * vo) { ModelAndView mv = new ModelAndView();
	 * 
	 * int result = memberService.memberInsert(vo);
	 * 
	 * if(result == 1) { mv.addObject("result", "success"); }else {
	 * mv.addObject("result", "fail"); }
	 * 
	 * return mv; }
	 */
	
//	=====================파일 업로드 insert====================	
	// 강사 회원가입
	@RequestMapping("/memberInsert.do")
	@ResponseBody
	public Map memberInsert(MemberVO vo, HttpServletRequest request) {
		Map map = new HashMap();
		
		String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
	    System.out.println(savePath);
//		System.out.println(vo.getFile_user_pict());
//		System.out.println("user_nm = " + vo.getUser_nm());
		String user_pict 	= fileUpload( vo.getFile_user_pict(), savePath );
		vo.setUser_pict(user_pict);
		
		if(vo.getFile_user_file() != null) {
			String user_file	= fileUpload( vo.getFile_user_file(), savePath );
			vo.setUser_file(user_file);
		}
		
		int result = memberService.memberInsert(vo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
			
		return map;
	}
	
	// 직원정보 저장
	@RequestMapping("/emplInsert.do")
	@ResponseBody
	public Map emplInsert(MemberVO vo, HttpServletRequest request) {
		Map map = new HashMap();
		
		String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
//		System.out.println(vo.getFile_user_pict());
//		System.out.println("user_nm = " + vo.getUser_nm());
		String user_pict 	= fileUpload( vo.getFile_user_pict(), savePath );
		
		vo.setUser_pict(user_pict);
		
		int result = memberService.emplInsert(vo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
	// 직원정보 수정
	@RequestMapping("/emplUpdate.do")
	@ResponseBody
	public Map emplUpdate(MemberVO vo, HttpServletRequest request, @RequestParam("update_user_id1") String update_user_id1) {
		Map map = new HashMap();
		
		String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
//		System.out.println(vo.getFile_user_pict());
//		System.out.println("user_nm = " + vo.getUser_nm());
		String user_pict 	= fileUpload( vo.getFile_user_pict(), savePath );

		vo.setUser_pict(user_pict);
		vo.setUser_id(update_user_id1);
		
		int result = memberService.emplUpdate(vo);
		
		if(result == 1) {
//			System.out.println("성공");
			map.put("result", "success");
		}else {
//			System.out.println("실패");
			map.put("result", "false");
		}
		
		return map;
	}
	
	// 강사정보 수정
	@RequestMapping("/teacherUpdate.do")
	@ResponseBody
	public Map teacherUpdate(MemberVO vo, HttpServletRequest request, @RequestParam("update_user_id2") String update_user_id2) {
		Map map = new HashMap();
		
		String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
//		System.out.println(vo.getFile_user_pict());
//		System.out.println("user_nm = " + vo.getUser_nm());
		String user_pict 	= fileUpload( vo.getFile_user_pict(), savePath );
		
		vo.setUser_pict(user_pict);
		vo.setUser_id(update_user_id2);
		
		int result = memberService.teacherUpdate(vo);
		
		if(result == 1) {
//			System.out.println("성공");
			map.put("result", "success");
		}else {
//			System.out.println("실패");
			map.put("result", "false");
		}
		
		return map;
	}
	
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
		fileName += calendar.get(Calendar.MONTH);
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
//	=====================파일 업로드 insert====================
	
	// 아이디 중복체크
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public Map idCheck(MemberVO vo) {
		Map map = new HashMap();
		
		
		int result = memberService.idCheck(vo);
		
		if(result >= 1) {
			map.put("result", "find");	// 이미 존재하는 ID
		}else {
			map.put("result", "no_found");	// 같은 ID 없음. 가입가능
		}
			
		return map;
	}
	
	// 회원가입 담당자 검색 layer 이동
	@RequestMapping("/emplSearchOpen.do")
	public ModelAndView emplSearchOpen(@RequestParam("part") String part) {	
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("part", part);
		mv.setViewName(MAIN_PATH + "empl.jsp");
		
		return mv;
	}
	
	// 회원가임 담당자 검색
	@RequestMapping("/emplSearch.do")
	public ModelAndView emplSearch(MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getPart());
		System.out.println(vo.getUser_nm());
		List<MemberVO> list = memberService.emplSearch(vo);
		
		mv.addObject("list", list);
		mv.setViewName(MAIN_PATH + "empl_search.jsp");
		
		return mv;
	}
	
	// 시스템관리(직원/강사) 페이지 이동
	@RequestMapping("/memberCodeMnu.do")
	public ModelAndView memberCodeMnu(MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		
		List<CommVO> list = memberService.selectPart();
		
		mv.addObject("partList", list);
		mv.setViewName(MANA_PATH + "teacher.jsp");
		
		return mv;
	}
	
	// 강사 목록 조회
	@RequestMapping("/teacherTabSearch.do")
	public ModelAndView teacherTabSearch(MemberVO vo, HttpServletRequest request, @RequestParam(defaultValue = "1") int curPage) {
		ModelAndView mv = new ModelAndView();
		
//		System.out.println(vo.getPart());
		
		int cnt = memberService.teacherCount(vo);
		
		PagingVO paging = new PagingVO(cnt, curPage);
		
		vo.setStartIndex(paging.getStartIndex());
		vo.setCurrentPerPage(paging.getPageSize());
		
		List<MemberVO> list = memberService.teacherTabSearch(vo);
		
		mv.addObject("list", list);
		mv.addObject("cnt", cnt);
		mv.addObject("paging", paging);
		mv.setViewName(MANA_PATH + "teacher_tab_search2.jsp");
		
		return mv;
	}
	
	// 직원 목록 조회
	@RequestMapping("/emplTabSearch.do")
	public ModelAndView emplTabSearch(MemberVO vo, HttpServletRequest request, @RequestParam(defaultValue = "1") int curPage) {
		ModelAndView mv = new ModelAndView();
		
		int cnt = memberService.emplCount(vo);
		
		PagingVO paging = new PagingVO(cnt, curPage);
		
		vo.setStartIndex(paging.getStartIndex());
		vo.setCurrentPerPage(paging.getPageSize());
		
		List<MemberVO> list = memberService.emplTabSearch(vo);
		
		mv.addObject("list", list);
		mv.addObject("cnt", cnt);
		mv.addObject("paging", paging);
		mv.setViewName(MANA_PATH + "teacher_tab_search.jsp");
		
		return mv;
	}
	
	// 직원/강사 정보 삭제
	@RequestMapping("/memberDel.do")
	@ResponseBody
	public Map<String, Object> memberDel(MemberVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int result = memberService.memberDel(vo);
		
		if(result == 1) {
			map.put("result", "success");
		}else {
			map.put("result", "false");
		}
		
		return map;
	}

	
}
