package com.iticket.app.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.sec.CustomUserDetail;
import com.iticket.app.vo.AuthVO;
import com.iticket.app.vo.UsersVO;

@Repository
public class MUsersDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE="mappings.MUsersMapper";
	
	public int insert(UsersVO vo) {
		return sqlSession.insert(NAMESPACE + ".muser_add",vo);
	}
	public int insert(AuthVO vo) {
		return sqlSession.insert(NAMESPACE + ".auth_add",vo);
	}
	public CustomUserDetail userDetail(String user_id) {
		return sqlSession.selectOne(NAMESPACE + ".getAuths",user_id);
	}
	public UsersVO isMember(HashMap<String, String> map) {
		return sqlSession.selectOne(NAMESPACE + ".isMember",map);
	}
}
