package com.isoft.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface IEquipmentDAO {
    List<Map<String,Object>> findAllEquipment(int page, int pageSize);
    Map<String,Object> findEquipmentCount();
    boolean insertEquipmentInfo(String serialNumber, String ename, String etype, String estatus, Date productionDate, String examinationCycle);
    int deleteEquipmentInfoById(int id);
    List<Map<String,Object>> equipmentTotal();
}
