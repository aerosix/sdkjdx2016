package com.isoft.service;

import java.util.List;
import java.util.Map;

public interface IUserService
{
    String login(String uname, String upwd);
    boolean register(String uname,String upwd,String email);
    List<Map<String,Object>> findAllUser(int page, int pageSize);
    Map<String,Object> findUserCount();
    /*boolean insertUserInfo(String uname,String email,String role);*/
    int deleteUserInfoById(int id);
    boolean updateUserInfo(String uname,String email,String role);
    List<Map<String,Object>> userTotal();
}
