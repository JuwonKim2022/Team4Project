package com.kh.controller;

import java.sql.SQLException;import java.text.DateFormat;import java.util.Date;import java.util.Locale;import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.dao.SignUpDAO;
import com.kh.vo.SignUpDTO;









/**
 * Handles requests for the application home page.
 */
@Controller
public class RGController {

	private static final Logger logger = LoggerFactory.getLogger(RGController.class);



	@RequestMapping(value = "/form3", method = RequestMethod.GET)
	public String selectBiId(SignUpDTO signUpDTO) throws SQLException {
		
		return "developer/form3";
	}
	
	// AJAX 아이디 체크
	@RequestMapping(value = "/member/memberIdChk", method = RequestMethod.GET)
	@ResponseBody
	public String Id(HttpServletRequest req,SignUpDTO signUpDTO) throws SQLException {
		logger.info("A2assssssssAb");
		 String  result ;
	  String id = req.getParameter("memberId");
	  logger.info(id);
		SignUpDTO user = SignUpDAO.selectId(id);	
	if(user == null) {
		  logger.info("userid null");
		 result = "0";
		  logger.info("0줌");
	}else {
		  logger.info("userid not null");
		  result = "1";
		  logger.info("1줌");
	}
		
		
	
		
		return result;
	}

	


	/**
	 * Simply selects the home view to render by returning its name.
	 */
  
	@PostMapping("/member/join")
	public String insertIdPostd(HttpServletRequest req,SignUpDTO signUpDTO,RedirectAttributes rtt) throws SQLException {
		System.out.println("insertIdPostd");
			
		 logger.info("xzxxzxzxxxxxxxxxxxzxz.");
//		String id= req.getParameter("id");
//		  logger.info(id);
		String name=req.getParameter("name");
		String email=signUpDTO.getEmail();
		String id= signUpDTO.getId();
		String pw= req.getParameter("passeord");
		logger.info("가입정보");
		  logger.info("id-"+id);
		  logger.info("name-"+name);
		  logger.info("email-"+email);
		  logger.info("pw-"+pw);		
		System.out.println(id);
		System.out.println(name);
		System.out.println(email);
		System.out.println(pw);
		System.out.println("sysout 가능");
		SignUpDAO.insertId(new SignUpDTO(id,name,email));
		logger.info("가입 인설트 실행");

		return "index";
	}
	




}
