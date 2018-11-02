package com.earth.planit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.earth.planit.service.ContentDTO;
import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;
import com.earth.planit.service.NaverLoginBO;
import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.impl.FileUtils;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class MemberController {
   /*
    * MemberController 1] 로그인 페이지 2] 메인으로 이동 3] 회윈가입 페이지 4] 일반 회원 마이페이지
    * 
    * 
    */
   @Value("${PAGE_SIZE}")
   private int pageSize;
   @Value("${BLOCK_PAGE}")
   private int blockPage;
   
   /* 서비스 주입 */
   @Resource(name = "memberService")
   private MemberService service;

   @RequestMapping("/planit/login/Login.it")
   public String gotoLogin(HttpSession session,Model model) throws Exception {
	   /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);
		
		//네이버 
		model.addAttribute("url", naverAuthUrl);

		/* 생성한 인증 URL을 View로 전달 */


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
   public String gotoMyPageHome(@RequestParam Map map,HttpSession session,Model model) throws Exception {
      //[세션에서 아이디 얻어서 map에 저장]
      map.put("id", session.getAttribute("id"));
      //[홈에 뿌려줄 리뷰리스트(5)]
      List<ReviewDTO> homeReviewList=service.homeReviewList(map);
      //[홈에 뿌려줄 QnA리스트(5)]
      List<FaqNoticeDTO> homeQnAList=service.homeQNAList(map);
      
      //[홈에 뿌려줄 Liked리스트(5,5,5)]
      List<Map> memberLiked_Tour=service.memberLikedTour(map);
      List<Map> memberLiked_Review=service.memberLikedReview(map);
      List<Map> memberLiked_Planner=service.memberLikedPlanner(map);
      //[홈에 뿌려줄 Planner리스트(5)]
      List<Map> homePlannerList=service.homePlannerList(map);
         
      model.addAttribute("homePlannerList", homePlannerList);
      model.addAttribute("memberLiked_Planner", memberLiked_Planner);
      model.addAttribute("memberLiked_Review", memberLiked_Review);
      model.addAttribute("memberLiked_Tour", memberLiked_Tour);
      model.addAttribute("homeReviewList", homeReviewList);
      model.addAttribute("homeQnAList", homeQnAList);
      
      return "mypage/MyPageHome.theme";
   }



   @RequestMapping("/planit/mypage/MyPageEditProfile.it")
   public String gotoMyPageEditProfile() throws Exception {

      return "mypage/MyPageEditProfile.theme";
   }

   // 프로필 수정처리
   @RequestMapping(value = "/planit/mypage/editsave.it", method = RequestMethod.POST)
   public String profileEdit(@RequestParam Map map, //
         MultipartHttpServletRequest mhsr,
         HttpSession session) throws Exception {
      
      map.put("id", session.getAttribute("id").toString());
      int profilecheck=service.profilecheck(map);
      
      System.out.println("프로필 있니 없니:"+profilecheck);
      System.out.println(map.get("profile")==null?"프로필 있음":"프로필 없음");
      if(map.get("isExistProfile") ==null&&map.get("profile")!=null) {
      // 1]서버의 물리적 경로 얻기
         String phicalPath = mhsr.getServletContext().getRealPath("/Upload/Member");
         // 1-1]MultipartHttpServletRequest객체의 getFile("파라미터명")메소드로
         // MultipartFile객체 얻기
         MultipartFile profile = mhsr.getFile("profile");
         // 2]File객체 생성
         // 2-1] 파일 중복시 이름 변경
         
         String newFilename = FileUtils.getNewFileName(phicalPath, profile.getOriginalFilename());
   
         File file = new File(phicalPath + File.separator + newFilename);
         // 3]업로드 처리
         profile.transferTo(file);
         map.put("profile", newFilename.toString().trim());
      }
      else {
         System.out.println("이미지 값을 이미 가지고 있습니다.");
         map.put("profile", map.get("isExistProfile"));
      }
      
      
      
      
      System.out.println(map.get("self"));
      System.out.println(map.get("id"));
      System.out.println(map.get("email"));
      System.out.println(map.get("name"));
      
      
      int affected = service.updateProfile(map);
      System.out.println(affected == 1 ? "입력성공" : "입력실패");
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
   public String gotoQnADetail(Model model,//리퀘스트 영역 저장용
         HttpServletRequest req,//페이징용 메소드에 전달
         @RequestParam Map map,//검색용 파라미터 받기
         @RequestParam(required=false,defaultValue="1") int nowPage//페이징용 nowPage파라미터 받기용
         ,HttpSession session
         ) throws Exception {
      map.put("id", session.getAttribute("id"));
      
      int totalCount = service.getTotalCount(map);
      int totalPage = (int)Math.ceil(((double)totalCount/pageSize));
      int start = (nowPage-1)*pageSize+1;
      int end  = nowPage*pageSize;
      map.put("start", start);
      map.put("end", end);
      List<FaqNoticeDTO> QnAListDetail=service.memberQnAList(map);
      String pagingString = CommonUtil.pagingBootStrapStyle(
                     totalCount,
                     pageSize, 
                     blockPage, 
                     nowPage, 
                     req.getContextPath()+"/planit/mypage/detail/Q&A.it?");
      
      model.addAttribute("QnAListDetail", QnAListDetail);
      model.addAttribute("pagingString", pagingString);
      model.addAttribute("totalRecordCount", totalCount);
      model.addAttribute("pageSize", pageSize);
      model.addAttribute("nowPage", nowPage);
      
      
      
      return "mypage/DetailQnA.theme";

   }



   @RequestMapping("/planit/mypage/detail/Review.it")
   public String gotoReviewDetail(@RequestParam Map map,HttpSession session,Model model) throws Exception {
      map.put("id", session.getAttribute("id"));
      List<ReviewDTO> reviewList=service.memberReviewList(map);
      
      model.addAttribute("reviewList", reviewList);
      return "mypage/DetailReview.theme";

   }

   @RequestMapping("/planit/mypage/detail/Liked.it")
   public String gotoLikedDetail(@RequestParam Map map,HttpSession session,Model model) throws Exception {
      map.put("id", session.getAttribute("id"));
      List<Map> likedPlannerAll=service.memberLikedPlannerDetail(map);
      List<Map> likeReviewAll=service.memberLikedReviewDetail(map);
      List<Map> likedTourAll=service.memberLikedTourDetail(map);
      
      model.addAttribute("likedPlannerAll",likedPlannerAll);
      model.addAttribute("likeReviewAll",likeReviewAll);
      model.addAttribute("likedTourAll",likedTourAll);
      return "mypage/DetailLiked.theme";

   }

   @RequestMapping("/planit/mypage/detail/Planner.it")
   public String gotoPlannerDetail(@RequestParam Map map,HttpSession session,Model model) throws Exception {
      map.put("id", session.getAttribute("id"));
      List<Map> plannerList=service.memberPlannerList(map);
      
      model.addAttribute("plannerList", plannerList);
      return "mypage/DetailPlanner.theme";

   }
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
         //[선호사항 세션저장]
         map.put("id", session.getAttribute("id"));
         List<MemberDTO> memberPreferList=service.memberPreferList(map);
         session.setAttribute("memberPreferList", memberPreferList);
         //이미지 세션에 저장하기
         System.out.println(memberRecord.getProfile());
         session.setAttribute("memberRecord", memberRecord);


         return "redirect:/";
      } else { // 비회원일경우
         model.addAttribute("loginError", "아이디와 비밀번호가 틀립니다.");
      }

      return "forward:/planit/login/Login.it";

   }

   // [로그아웃 처리]
   @RequestMapping("/member/login/Logout.it")
   public String logoutProcess(HttpSession session) throws Exception {
      session.invalidate();

      return "redirect:/";


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
   // [선호도조사 처리]
   @RequestMapping(value = "/plnait/member/preference/survey.it", method = RequestMethod.POST)
   public String userPrefernectProcess(MemberDTO dto, @RequestParam Map map, HttpSession session) throws Exception {
      
      int count=0;
      int index=0;
      String[] prefer=new String[4];
      prefer[0]=map.get("radio_theme").toString();
      prefer[1]=map.get("radio_tour").toString();
      prefer[2]=map.get("radio_Activity").toString();
      prefer[3]=map.get("radio_distinct").toString();
      map.put("id", session.getAttribute("id"));
      while(count<4) {
         map.put("cat2", prefer[count]);
         int updateCount=service.updateProference(map);
         count++;
         if(updateCount==1)
            index++;
         
      }
      count=0;
   
      return "redirect:/";
   }


   @RequestMapping(value = "/planit/member/idcheck.it", method = RequestMethod.POST)
   @ResponseBody
   public String idcheck(@RequestBody String id) {

      int count = 0;
      count = service.idDuplicate(id) == true ? 0 : 1;
      System.out.println(count);
      // map.put("cnt", count);

      return String.valueOf(count);
   }

   //왜 못찾니..
		@RequestMapping("/member/qna/view.it")
		public String gotoQnAView(@RequestParam Map map,Model model,HttpSession session) throws Exception {
			
			System.out.println("ask_no"+map.get("ask_no"));
			map.put("id", session.getAttribute("id"));
			Map memberQnAView =service.memberQnAView(map);
			
			memberQnAView.put("ASKDATE",memberQnAView.get("ASKDATE").toString().substring(0,10));
			
			model.addAttribute("memberQnAView", memberQnAView);
			return "mypage/QnAView.theme";
		}
	
	//++++++++++++++++++++++++[네이버 아이디로 로그인]+++++++++++++++++++++++++
		@Resource(name = "naverLoginBO")
		private NaverLoginBO naverLoginBO;
		
		private String apiResult = null;

	   
		// 네이버 로그인 성공시 callback호출 메소드
		@RequestMapping(value = "/planit/naver/callback.it", method = { RequestMethod.GET, RequestMethod.POST })
	    public String callback(MemberDTO dto,@RequestParam Map map,Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
	            throws Exception  {
	        System.out.println("여기는 callback");
	        OAuth2AccessToken oauthToken;
	        oauthToken = naverLoginBO.getAccessToken(session, code, state);
	        //로그인 사용자 정보를 읽어온다.
	        apiResult = naverLoginBO.getUserProfile(oauthToken);
	        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
	        model.addAttribute("result", apiResult);
	        System.out.println("result"+apiResult);
	        /* 네이버 로그인 성공 페이지 View 호출 */
		      JSONParser jsonParser = new JSONParser();
		      JSONObject jsonObject = (JSONObject) jsonParser.parse(apiResult);
		      JSONObject jsonResult = (JSONObject) jsonObject.get("response");
		  
		      map.put("id", jsonResult.get("id").toString());
		      map.put("pwd", 1234);
		      map.put("gender", jsonResult.get("gender").toString());
		      map.put("name", jsonResult.get("name").toString());
		      map.put("age", jsonResult.get("age").toString());
		      map.put("email", jsonResult.get("email").toString());
		      String[] naverID=jsonResult.get("email").toString().split("@");
		      System.out.println("스플릿한 아이디"+naverID[0]);
		      map.put("id", naverID[0]);
	
		      boolean isNaverLogin = service.isNaverLogin(map);
				     
				      
		    System.out.println(isNaverLogin);
		    System.out.println();
		    if (isNaverLogin) { // 회원일경우
		       // 로그인 처리 - 세션 영역에 저장
		       session.setAttribute("id", map.get("id"));
		       MemberDTO memberRecord = service.memberInfo(map);
		       //[선호사항 세션저장]
		       map.put("id", session.getAttribute("id"));
		       List<MemberDTO> memberPreferList=service.memberPreferList(map);
		       session.setAttribute("memberPreferList", memberPreferList);
		       //이미지 세션에 저장하기
		       System.out.println(memberRecord.getProfile());
		       session.setAttribute("memberRecord", memberRecord);
		
		
		       return "redirect:/";
		    } else { // 처음인 경우
		    	dto.setPwd("0000");
		    	dto.setId(map.get("id").toString());
		    	dto.setEmail(map.get("email").toString());
		    	dto.setAge(map.get("age").toString());
		    	dto.setGender(map.get("gender").toString());
		    	dto.setName(map.get("name").toString());
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
		

	        
	       
	    }
	


		  
}