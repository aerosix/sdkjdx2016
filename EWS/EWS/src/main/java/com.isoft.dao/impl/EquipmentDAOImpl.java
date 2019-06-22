package com.isoft.dao.impl;

import com.isoft.dao.IEquipmentDAO;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class EquipmentDAOImpl implements IEquipmentDAO {
    @Autowired
    SqlSessionFactory sessionFactoryBean;

    @Override
    public List<Map<String, Object>> findAllEquipment(int page, int pageSize) {
        SqlSession sqlSession = sessionFactoryBean.openSession(true);
        String statment="com.isoft.mapping.EquipmentMapper.findAllEquipment";
        Map map=new HashMap();
        map.put("page",(page-1)*pageSize);
        map.put("pageSize",pageSize);
        List<Map<String,Object>> list=sqlSession.selectList(statment,map);

        return list;
    }

    @Override
    public Map<String, Object> findEquipmentCount() {
        try {
            SqlSession sqlSession = sessionFactoryBean.openSession(true);
            String statment = "com.isoft.mapping.EquipmentMapper.fineEquipmentCount";
            /*System.out.println("666");*/
            Map map = sqlSession.selectOne(statment);
            return map;
        }
        catch (Exception e)
        {

            e.printStackTrace();
        }
        return  null;
    }

    @Override
    public boolean insertEquipmentInfo(String serialNumber, String ename, String etype, String estatus, Date productionDate, String examinationCycle) {
        SqlSession sqlSession = sessionFactoryBean.openSession(true);
        String statment = "com.isoft.mapping.EquipmentMapper.register";
        Map map=new HashMap();
        map.put("serialNumber",serialNumber);
        map.put("ename",ename);
        map.put("etype",etype);
        map.put("estatus",estatus);
        map.put("productionDate",productionDate);
        map.put("examinationCycle",examinationCycle);
        int i = sqlSession.insert(statment,map);
        if(i>0)
            return true;
        else
            return false;
    }

    @Override
    public int deleteEquipmentInfoById(int id) {
        try {
            SqlSession sqlSession = sessionFactoryBean.openSession(true);
            String statement = "com.isoft.mapping.EquipmentMapper.deleteEquipmentInfoById";
            int i = sqlSession.delete(statement,id);
            return i;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Map<String, Object>> equipmentTotal()
    {
        SqlSession sqlSession = sessionFactoryBean.openSession(true);
        String statement = "com.isoft.mapping.EquipmentMapper.equipmentTotal";
        List<Map<String, Object>> list = sqlSession.selectList(statement);
        return list;
    }
}
