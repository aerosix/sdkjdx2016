package com.isoft.service.impl;

import com.isoft.dao.IEquipmentDAO;
import com.isoft.dao.impl.EquipmentDAOImpl;
import com.isoft.service.IEquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service("EquipmentService")
public class EquipmentServiceImpl implements IEquipmentService{
    @Autowired
    IEquipmentDAO equipmentDAO;
    @Override
    public List<Map<String, Object>> findAllEquipment(int page, int pageSize) {

        return equipmentDAO.findAllEquipment(page,pageSize);
    }
    @Override
    public Map<String, Object> findEquipmentCount()
    {
        return equipmentDAO.findEquipmentCount();
    }

    @Override
    public boolean insertEquipmentInfo(String serialNumber, String ename, String etype, String estatus, Date productionDate, String examinationCycle) {
        return equipmentDAO.insertEquipmentInfo(serialNumber,ename,etype,estatus,productionDate,examinationCycle);
    }

    @Override
    public int deleteEquipmentInfoById(int id)
    {
        return equipmentDAO.deleteEquipmentInfoById(id);
    }

    @Override
    public List<Map<String, Object>> equipmentTotal() {
        return equipmentDAO.equipmentTotal();
    }
    


}
