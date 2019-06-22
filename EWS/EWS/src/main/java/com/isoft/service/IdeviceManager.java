package com.isoft.service;

import java.util.List;
import java.util.Map;

public interface IdeviceManager {
    List<Map<String,Object>> findAllUser(int page, int pageSize);
    Map<String,Object> findUserCount();
    int deleteUserInfoById(int id);
    List<Map<String,Object>> userTotal();
}
