package com.earth.planit.web;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;
import com.earth.planit.service.impl.FileUtils;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class MemberController {
	/*
	 * MemberController 1] 로그인 페이지 2] 메인으로 이동 3] 회윈가입 페이지 4] 일반 회원 마이페이지
	 * 
	 * 
	 */

	/* 서비스 주입 */
	@Resource(name = "memberService")
	private MemberService service;

	@RequestMapping("/planit/login/Login.it")
	public String gotoLogin() throws Exception {
		return "login/LoginForm.theme";
	}

	@RequestMapping("/Plait/Planit.it")
	public String gotoMain() throws Exception {
		return "main/main.tiles";// main은 반드시 tiles로 이동해야 함
	}

	@RequestMapping("/member/login/Join.it")
	public String gotoJoin() throws Exception {
		return "login/JoinMain.theme";
	}

	@RequestMapping("/member/login/UserJoin.it")
	public String gotoUserJoin(@RequestParam Map map) throws Exception {

		return "login/JoinUserProgress.theme";
	}

	// ***************마이페이지 이동(일반회원)
	@RequestMapping("/planit/mypage/MyPageHome.it")
	public String gotoMyPageHome() throws Exception {
		// 사진 및 기타등등 노출
		/*
		 * System.out.println("id"+map.get("id")); session.setAttribute("userid",
		 * map.get("id"));
		 */
		// @RequestParam Map map,HttpSession session
		return "mypage/MyPageHome.theme";
	}

	@RequestMapping("/planit/mypage/MyPageEditProfile.it")
	public String gotoMyPageEditProfile() throws Exception {

		return "mypage/MyPageEditProfile.theme";
	}

	// 프로필 수정처리
	@RequestMapping(value = "/planit/mypage/editsave.it", method = RequestMethod.POST)
	public String profileEdit(@RequestParam Map map, //
			MultipartHttpServletRequest mhsr) throws Exception {
	/*	MultipartRequest mr=FileUtils.upload(req, req.getServletContext().getRealPath("/Upload/Member"));
		System.out.println("mr"+mr);
		System.out.println(map.get("profile").toString());
		String profile=mr.getFilesystemName(map.get("profile").toString());
		*/
		
		   //업로드할 폴더의 물리적 경로 
	      String phisicalPath=mhsr.getServletContext().getRealPath("/Upload");
	      // multipartFile객체 얻기
	      MultipartFile upload=mhsr.getFile("upload");
	      // 파일이름 중복 체크
	      // 동일한 이름이 있는 경우: 인덱싱 
	      // 동일한 이름이 없는 경우 : 원래이름사용
	      String originname = upload.getOriginalFilename();
			String filename = FileUtils.getNewFileName(phisicalPath, originname);
			System.out.println("저장될 파일 이름 -"+filename);
			//파일객체 생성
			File file = new File(phisicalPath+File.separator+filename);
	      // 업로드 처리 
	      upload.transferTo(file);
	      //// 데이터 저장 
	      mhsr.setAttribute("writer", mhsr.getParameter("writer"));
	      mhsr.setAttribute("title", mhsr.getParameter("title"));
	      // 파일과 관련된 정보 저장
	      mhsr.setAttribute("original", upload.getOriginalFilename());
	      mhsr.setAttribute("size", (int)Math.ceil(upload.getSize()/1024.0) );
	      mhsr.setAttribute("real", filename);
	      mhsr.setAttribute("type", upload.getContentType());
	     

		//map.put("profile", profile);
		int affected = service.updateProfile(map);
		System.out.println(affected==1?"입력성공":"입력실패");
		return "forward:/planit/mypage/MyPageHome.it";
	}

	@RequestMapping("/planit/mypage/MyPageEditPassword.it")
	public String gotoMyPageEditPassword() throws Exception {

		return "mypage/MyPageEditPassword.theme";
	}

	/// ******임시
	@RequestMapping("/planit/mypage/MyPagePassCheck.it")
	public String gotoMyPagePassCheck() throws Exception {

		return "mypage/MyPagePassCheck.theme";
	}

	@RequestMapping("/planit/mypage/Preference.it")
	public String gotoPreference() throws Exception {

		return "mypage/UserPreference.theme";
	}

	@RequestMapping("/planit/mypage/Preference2.it")
	public String gotoPreference2() throws Exception {

		return "/mypage/UserPreference2.theme";
		/// planit/WebContent/WEB-INF/member/mypage/UserPreference2.jsp
	}
	// 마이페이지에서 회원정보 및 비밀번호 변경시 기존 비밀번호 체크를 위한 프로세스
	// 아직은 체크없이 바로 해당페이지로 이동합니다 :)
	/*
	 * @RequestMapping("/planit/mypage/MyPageEditProfile.it") public String
	 * gotoMyPageEditProfile()throws Exception{ return
	 * "mypage/MyPagePassCheck.theme"; }
	 * 
	 * @RequestMapping("/planit/mypage/MyPageEditPassword.it") public String
	 * gotoMyPageEditPassword()throws Exception{ return
	 * "mypage/MyPagePassCheck.theme"; }
	 */
	// ***************마이페이지 상세페이지 이동(일반회원)

	@RequestMapping("/planit/mypage/detail/Q&A.it")
	public String gotoQnADetail() throws Exception {
		return "mypage/DetailQnA.theme";

	}

	@RequestMapping("/planit/mypage/detail/Review.it")
	public String gotoReviewDetail() throws Exception {
		return "mypage/DetailReview.theme";

	}

	@RequestMapping("/planit/mypage/detail/Liked.it")
	public String gotoLikedDetail() throws Exception {
		return "mypage/DetailLiked.theme";

	}

	@RequestMapping("/planit/mypage/detail/Planner.it")
	public String gotoPlannerDetail() throws Exception {
		return "mypage/DetailPlanner.theme";

	}
	// ***************마이페이지 이동(기업회원)

	/* 로그인 처리 method=RequestMethod.POST로 설정하여 get방식 접근을 막는다. */
	@RequestMapping(value = "/member/login/LoginProcess.it", method = RequestMethod.POST)
	public String loginProcess(@RequestParam Map map, HttpSession session, Model model) throws Exception {
		// form 하위 데이터가 잘 온것을 확인! key= input태그의 name속성
		System.out.println("id=" + map.get("id") + " pwd=" + map.get("pwd"));

		boolean isLogin = service.isLogin(map);
		System.out.println(isLogin);
		System.out.println();
		if (isLogin) { // 회원일경우
			// 로그인 처리 - 세션 영역에 저장
			session.setAttribute("id", map.get("id"));
			MemberDTO memberRecord = service.memberInfo(map);
			session.setAttribute("memberRecord", memberRecord);
			return "forward:/Plait/Planit.it";
		} else { // 비회원일경우
			model.addAttribute("loginError", "아이디와 비밀번호가 틀립니다.");
		}

		return "forward:/planit/login/Login.it";

	}

	// [로그아웃 처리]
	@RequestMapping("/member/login/Logout.it")
	public String logoutProcess(HttpSession session) throws Exception {
		session.invalidate();
		return "forward:/Plait/Planit.it";

	}

	// [회원가입 처리]
	@RequestMapping(value = "/member/login/UserJoinFormProcess.it", method = RequestMethod.POST)
	public String userJoinFormProcess(MemberDTO dto, @RequestParam Map map, HttpSession session) throws Exception {
		System.out.println("비밀번호:" + map.get("pwd"));
		System.out.println("비밀번호:" + dto.getPwd());

		int isJoin = service.isJoin(dto);
		//
		System.out.println(isJoin);
		if (isJoin == 1) {
			session.setAttribute("id", map.get("id"));
			// 시용자 선호도를 하기 위한 preference 테이블에 추가 (총 23개가 insert되야한다)
			int insertPrefer = service.insertPreference(map);
			System.out.println("선호도 추가된 행 개수 " + insertPrefer);
		}
		return "mypage/UserPreference.theme";

		// 선호도 체크페이지 이동

	}
	@RequestMapping(value="/planit/member/idcheck.it",method=RequestMethod.POST)
    @ResponseBody
    public String idcheck(@RequestBody String id) {
        
        int count = 0;
        count = service.idDuplicate(id)==true?0:1;
        System.out.println(count);
        //map.put("cnt", count);
 
        return String.valueOf(count);
    }
	

}
