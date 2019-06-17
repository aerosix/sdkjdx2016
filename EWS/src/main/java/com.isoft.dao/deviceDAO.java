package com.isoft.dao;
import java.util.List;
import java.util.Map;

public interface deviceDAO {
    String login(String peopleId,String password, String etype) throws Exception;
    boolean register(String peopleId,String password,String etype);
    List<Map<String,Object>> findAllUser(int page, int pageSize);
    Map<String,Object> findUserCount();   List<Map<String,Object>> userTotal();
    int deleteUserInfoById(int id);

}
