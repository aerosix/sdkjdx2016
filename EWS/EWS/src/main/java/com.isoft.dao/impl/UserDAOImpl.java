package com.isoft.dao.impl;

import com.isoft.dao.IUserDAO;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository("userDAO")
public class UserDAOImpl implements IUserDAO {
    @Autowired
    SqlSessionFactoryBean sessionFactoryBean;
    @Override
    public String login(String uname, String upwd) {
        SqlSession sqlSession= sessionFactoryBean.openSession( b: ture);
        String statment="com.isoft.userMapper.login";
        Map map=new HashMap();
        map.put("uname",uname);
        map.put("upwd",upwd);
        List<Map<String,Object>> list = sqlSession.selectList(statment,);
        if (list.size()>0)
            return "success";
        else
            return "fault";
      /*  System.out.println(uname+","+upwd);
        return "success";*/
    }

    @Override
    public boolean register(String uname, String upwd, String email) {
        SqlSession sqlSession = sessionFactoryBean openSession( b: ture);
        String statment="";
        Map map=
        /*System.out.println(email);*/
        return true;
    }
}
