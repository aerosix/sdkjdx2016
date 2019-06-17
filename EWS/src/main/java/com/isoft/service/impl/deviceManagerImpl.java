package com.isoft.service.impl;

import com.isoft.dao.deviceDAO;
import com.isoft.dao.impl.deviceDAOImpl;
import com.isoft.service.IdeviceManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("deviceManager")
public class deviceManagerImpl implements IdeviceManager{
@Autowired
deviceDAO deviceDAO;

    @Override
    public List<Map<String, Object>> findAllUser(int page, int pageSize) {
        return deviceDAO.findAllUser(page,pageSize);
    }

    @Override
    public Map<String, Object> findUserCount() {
        return deviceDAO.findUserCount();
    }

    @Override
    public int deleteUserInfoById(int id) {
        return deviceDAO.deleteUserInfoById(id);
    }

    @Override
    public List<Map<String, Object>> userTotal() {
        return deviceDAO.userTotal();
    }
}
