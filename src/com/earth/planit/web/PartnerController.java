package com.earth.planit.web;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
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

import com.earth.planit.service.PartnerDTO;
import com.earth.planit.service.PartnerRoomDTO;
import com.earth.planit.service.PartnerService;
import com.earth.planit.service.impl.FileUtils;
import com.earth.planit.service.impl.PagingUtil;

@Controller
public class PartnerController {

   // 리소스파일(resource.properties)에서 읽어오기
   @Value("${TABLE_PAGE_SIZE}")
   private int pageSize;
   @Value("${TABLE_BLOCK_PAGE}")
   private int blockPage;

   /*
    * PartnerController 1] 예약 관리 페이지 2] 사용자 문의 페이지 3]예약 상세보기
    */

   @Resource(name = "partnerService")
   private PartnerService service;
 
   // [기업 로그인]
   @RequestMapping(value = "/partner/login/LoginProcess.it", method = RequestMethod.POST)
   public String partnerLoginProcess(@RequestParam Map map, HttpSession session, Model model) throws Exception {
      // form 하위 데이터가 잘 온것을 확인! key= input태그의 name속성
      System.out.println("id=" + map.get("p_id") + " pwd=" + map.get("pwd"));

      boolean isLogin = service.isPartnerLogin(map);
      System.out.println(isLogin);
      System.out.println(service.isPartnerLogin(map));
      if (isLogin) { // 회원일경우
         // 로그인 처리 - 세션 영역에 저장
         session.setAttribute("p_id", map.get("p_id"));
         session.setAttribute("business_no", map.get("id"));

         PartnerDTO partnerRecord = service.partnerInfo(map);
         int roomTotalCount=service.roomtotalcount(map);
         System.out.println(map.get("p_id")+"가 등록한 방의 갯수:"+roomTotalCount);
         session.setAttribute("roomTotalCount", roomTotalCount);
         session.setAttribute("partnerRecord", partnerRecord);

         return "forward:/planit/mypage/partner/PartnerMyPageHome.it";
      } else { // 비회원일경우
         model.addAttribute("loginError", "아이디와 비밀번호가 틀립니다.");
         return "forward:/planit/login/Login.it";
      }

   }

   // [기업회원가입]
   @RequestMapping("/member/login/CompanyJoin.it")
   public String gotoCompanyJoin() throws Exception {
      return "login/JoinPartnerProgress.theme";
   }

   @RequestMapping(value = "/member/login/PartnerJoinFormProcess.it", method = RequestMethod.POST)
   public String partnerJoinFormProcess(PartnerDTO dto, @RequestParam Map map, HttpSession session) throws Exception {

      int isPartnerJoin = service.isPartnerJoin(dto);
      System.out.println(isPartnerJoin);

      return "forward:/planit/login/Login.it";
   }

   @RequestMapping(value = "/planit/member/partner/p_idcheck.it", method = RequestMethod.POST)
   @ResponseBody
   public String idcheck(@RequestBody String p_id) {

      int count = 0;
      Map map = new HashMap();

      count = service.isDuplicate(p_id) == true ? 0 : 1;
      System.out.println(count);
      // map.put("cnt", count);

      return String.valueOf(count);
   }

   // [기업_마이페이지]
   @RequestMapping("/planit/mypage/partner/PartnerMyPageHome.it")
   public String gotoPartnerMyPageHome(@RequestParam Map map,Model model,HttpSession session) throws Exception {
	   map.put("p_id",session.getAttribute("p_id"));
	   List<Map> userAskPartner=service.userAskPartner(map);
	   List<PartnerRoomDTO> partnerRoom=service.partnerRoomList(map);
	   List<Map> partnerReservation=service.partnerReservationList(map);
	   List<Map> partnerEventRequest=service.partnerEventRequestList(map);
	   
	   for(Map list:userAskPartner) 
	    	  list.put("ASKDATE",list.get("ASKDATE").toString().substring(0,10));
	   for(Map list:partnerReservation) 
	    	  list.put("BOOKDATE",list.get("BOOKDATE").toString().substring(0,10));
	   for(Map list:partnerEventRequest) 
	    	  list.put("REQDATE",list.get("REQDATE").toString().substring(0,10));
	   
	   model.addAttribute("partnerEventRequest", partnerEventRequest);
	   model.addAttribute("partnerReservation", partnerReservation);
	   model.addAttribute("partnerRoom", partnerRoom);
	   model.addAttribute("userAskPartner", userAskPartner);
	   
	   
	   
      return "mypage/partner/PartnerMyPageHome.theme";
   }

   // [상품등록페이지 이동]
   @RequestMapping("/plantit/mypage/partner/productResist.it")
   public String gotoPartnerProductResist() throws Exception {
      return "mypage/partner/PartnerProduct.theme";
   }

   // [상품등록 프로세스]
   @RequestMapping(value = "/planit/member/partner/RoomResistForm.it", method = RequestMethod.POST)
   public String roomResistProcess(@RequestParam Map map,  HttpSession session,
         MultipartHttpServletRequest mhsr) throws Exception {
      String p_id = (String) session.getAttribute("p_id");
      System.out.println("p_id"+p_id);
     // System.out.println("첨부된 파일:"+mhsr.getFile(""));
      map.put("p_id", p_id);
      System.out.println("map.get(\"p_id\").toString()"+map.get("p_id").toString());
      //////
      String phisicalPath = mhsr.getServletContext().getRealPath("/Upload/Partner/Product");
      // muitiform객체 얻기
      
      int index = 0;
      List<MultipartFile> roomimages = mhsr.getFiles("roomimages");
      String phicalPath = mhsr.getServletContext().getRealPath("/Upload/Member");
      String nameArr[]=new String[roomimages.size()];
      for (MultipartFile img : roomimages) {
         String newFilename = FileUtils.getNewFileName(phicalPath, img.getOriginalFilename());

         System.out.println("newFilename : " + newFilename);

         String filename = FileUtils.getNewFileName(phisicalPath, newFilename);
         System.out.println("저장될 파일 이름 -" + filename);
         // 파일객체 생성
         File file = new File(phisicalPath + File.separator + filename);
         // 업로드 처리
         img.transferTo(file);
         nameArr[index]=filename;
         if(index<roomimages.size())
            index++;
         System.out.println(filename);
      }
      for(int i=0;i<roomimages.size();i++)
         map.put("roomimg"+i, nameArr[i]);
      
      service.roomResist(map);
      
      //System.out.println(service.roomResist(map));
      return "forward:/planit/mypage/partner/PartnerMyPageHome.it";
   }
   //상품리스트페이지
   @RequestMapping("/planit/member/partner/ProductList.it")
   public String gotoRoomProductList( // 페이징용 메소드에 전달
         @RequestParam Map map, Model model, HttpSession session) throws Exception{
  
   
      map.put("p_id", session.getAttribute("p_id"));
      
      System.out.println(map.get("p_id"));
      
     
      List<PartnerRoomDTO> roomlist=service.partnerRoomListDetail(map);
      model.addAttribute("roomlist", roomlist);

      
      return "mypage/partner/ProductList.theme";
   }
   
   
   //상품상세페이지
   @RequestMapping("/planit/member/partner/ProductView.it")
   public String gotoRoomProductView(@RequestParam Map map,Map model) throws Exception{
   
      //서비스 호출]
         PartnerRoomDTO productRecord=service.partnerRoomView(map);
         
         model.put("productRecord", productRecord);      
         
      return "mypage/partner/ProductView.theme";
      
   }
   
   @RequestMapping("/tourinfo/tdview/sleepList/Reservation.it")
   public String gotoUserReservation(@RequestParam Map map,Model model, HttpSession session) throws Exception{
	  
	   System.out.println("contentid:"+map.get("contentid"));
	   List<Map> tourRoomList=service.tourRoomList(map);
	   System.out.println(tourRoomList==null?"없다":"있다");
	   model.addAttribute("tourRoomList", tourRoomList);
	   return "tourinfo/tdview/reservation/UserviewProductList.theme";
   }
   @RequestMapping("/partner/product/Reservation.it")
   public String gotoReservationPage(@RequestParam Map map,Model model, HttpSession session) throws Exception{
	  
	   return "mypage/partner/ProductReservation.theme";
   }
   @RequestMapping("/partner/product/view/DeleteProduct")
   public String productDelete(@RequestParam Map map,Model model, HttpSession session) throws Exception{
	   
	   int isDelete=service.productDelte(map);
	   
	   return "forward:/planit/member/partner/ProductList.it";
   }

   
}