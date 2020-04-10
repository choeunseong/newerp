package student;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class StudentController {
	
	private StudentService studentService;
	public final String MAIN_PATH = "/WEB-INF/views/member/";
	public final String MANA_PATH = "/WEB-INF/views/management/";
	
	public StudentController() {}
	
	public StudentController(StudentService studentService) {
		super();
		this.studentService = studentService;
	}

	/*
	 * @RequestMapping("/member_cnt.do") public ModelAndView MemberCnt() {
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * return mv; }
	 */
	
	// 원생등록
	@RequestMapping(value = "/student/stuInsert.do", method = RequestMethod.POST)
	@ResponseBody
	public Map stuInsert(StudentVO stuVO, HttpServletRequest request) {
		Map map = new HashMap();
		
		String savePath = request.getRealPath("resources/member_files"); // 파일이 저장될 프로젝트 안의 폴더 경로
//		System.out.println(vo.getFile_user_pict());
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
//	================================파일업로드======================================
	
}
