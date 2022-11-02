package com.kh.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.kh.controller.RGController;
import com.kh.util.DBUtil2;
import com.kh.vo.SignUpDTO;





public class SignUpDAO {
	private static final Logger logger = LoggerFactory.getLogger(RGController.class);
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	//selectAllAccountsAccId()
	
	//insertAccount()

	//selectAccountById()

	//updateAccount()

	//deleteAccount()
	//아이디 추가
	public static void insertId(SignUpDTO signUpDTO) {
		SqlSession session = null;
		try {			
			try {
				String id = signUpDTO.getId();
				SignUpDTO temp = selectId(id);
				if(temp == null) {
					session = DBUtil2.getSqlSession(true);
					session.insert("SignUp.insertId", signUpDTO);
				}else {
					System.out.println("아이디 중복");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}						
		} finally {
			if(session != null)
				session.close();
		}
	}
	public static SignUpDTO selectId(String id)  throws SQLException {
		logger.info("xxxxxxxxxxx");

logger.info(id);
logger.info("xxxxxxxxxxx");
		SqlSession session = DBUtil2.getSqlSession();
		SignUpDTO selectAll = null;
		try {
			selectAll = (SignUpDTO)session.selectOne("SignUp.selectId",new String(id) );
		}finally {
			if(session != null)
				session.close();
		}
		return selectAll;
	}



}




