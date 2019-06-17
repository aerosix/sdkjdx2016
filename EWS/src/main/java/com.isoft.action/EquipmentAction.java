package com.isoft.action;

import com.isoft.service.IEquipmentService;
import com.isoft.service.impl.EquipmentServiceImpl;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/equipment")
public class EquipmentAction {
    @Autowired
    IEquipmentService equipmentService;
    @RequestMapping("/findAllEquipment.do")
    @ResponseBody
    public Map<String, Object> findAllEquipment(int page, int limit) {
        System.out.println(page + "," + limit);
        List<Map<String, Object>> list = equipmentService.findAllEquipment(page, limit);
        Map<String, Object> equipmentCount = equipmentService.findEquipmentCount();
        Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "设备信息");
        map.put("count", equipmentCount.get("count"));//设备表中的总记录数
        map.put("data", list);
        return map;//返回JSON格式数据，但是不能转换，因为找不到JSON消息转换器
    }

    @RequestMapping("/insertEquipmentInfo.do")
    @ResponseBody
    public  String insertEquipmentInfo(String serialNumber, String ename, String etype, String estatus, Date productionDate, String examinationCycle){
        boolean temp = equipmentService.insertEquipmentInfo(serialNumber,ename,etype,estatus,productionDate,examinationCycle);
        if (temp)
            return "success";
        else
            return "fault";
    }

    @RequestMapping("/deleteEquipmentInfoById.do")
    @ResponseBody
    public String deleteEquipmentInfoById(String id) {
        System.out.println(id);
        String result = "success";
        int i=0;
        try{
            String  [] arr= id.split(",");
            for (String index:arr) {
                i= equipmentService.deleteEquipmentInfoById(Integer.parseInt(index));
                System.out.println("正在删除第"+index+"条");
            }
        }catch ( Exception e){
            i=0;
            e.printStackTrace();
        }
        if (i == 0)
            result = "fault";
        return result;//返回JSON格式数据，但是不能转换，因为找不到JSON消息转换器
    }

    @RequestMapping("/equipmentTotal.do")
    @ResponseBody
    public Map<String, Object> equipmentTotal() {

        List<Map<String, Object>> list = equipmentService.equipmentTotal();
        Map map = new HashMap();
        List etypeList=new ArrayList();
        List countlist=new ArrayList();
        for (Map mp:list){
            etypeList.add(mp.get("etype"));
            countlist.add(mp.get("count"));
        }
        map.put("etypeList",etypeList);
        map.put("countList",countlist);
        return map;
    }
}
