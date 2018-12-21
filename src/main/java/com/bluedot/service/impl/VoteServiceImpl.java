package com.bluedot.service.impl;

import java.lang.reflect.Method;
import java.time.LocalDate;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.QualitativeDao;
import com.bluedot.dao.VoteDao;
import com.bluedot.po.Department;
import com.bluedot.po.VoteCadre;
import com.bluedot.po.VoteDepartment;
import com.bluedot.po.VoteObject;
import com.bluedot.service.VoteService;
/**
 * 实现voteService接口
 * @author hxp
 * 2018年12月5日 下午10:56:02
 */
@Service("voteService")
public class VoteServiceImpl implements VoteService {
    @Autowired 
    private VoteDao voteDao;
    @Autowired 
    private QualitativeDao qualitativeDao;
    
    private Integer localYear = LocalDate.now().getYear();
    /*
     * 该方法分为部门投票记录和个人投票批处理记录
     * 首先查询有无该项记录，没有的话进行insert，有的话进行update
     * */   
    @Override
    public int addVoteRecorde(Map unitMap, Map dataMap) throws NoSuchMethodException, SecurityException {
        VoteDepartment voteDepartment = new VoteDepartment();
        Class<? extends VoteObject> departmentClazz = voteDepartment.getClass();
        VoteCadre voteCadre = null;
        Object departmentObj  = unitMap.keySet().isEmpty() ? null:unitMap.keySet().iterator().next();
        System.out.println("departmentID=="+departmentObj);
        Integer  departmentID= Integer.valueOf((String) departmentObj);
        
         
        voteDepartment.setDepartmentID(departmentID);
        voteDepartment.setType(7);
        voteDepartment.setYear(localYear);
        //根据年份查询voteDepartment对象，如果不存在则世界进行添加
        voteDepartment = voteDao.queryVoteDepartmentRecord(voteDepartment);
        
        VoteDepartment department2 = new VoteDepartment();
        //通过departmentID 查询departmentName 进行设置
        Department department = qualitativeDao.getDepartmentById((int)departmentID);
        department2.setDepartmentName(department.getDepartmentName());
        department2.setDepartmentID(departmentID);
        department2.setType(7);
        department2.setYear(localYear);
        //获取get  set方法的后缀，进行下一步反射调用get set方法
        String departmentAttr = (String) unitMap.get(departmentObj);
        String setStr = "set"+departmentAttr.substring(0, 1).toUpperCase()+departmentAttr.substring(1);
        String getStr = "get"+departmentAttr.substring(0, 1).toUpperCase()+departmentAttr.substring(1);

        Method departmentSetMethod = departmentClazz.getDeclaredMethod(setStr, Integer.class);
        Method departmentGetMethod = departmentClazz.getDeclaredMethod(getStr);
        try {
            departmentSetMethod.invoke(department2 ,1);
            if(voteDepartment.getYear()!=localYear) {
                //当数据库无记录时直接插入
                voteDao.addVoteDepartmentRecord(department2);
            } else {
                //当数据库有记录时，将原记录与新记录进行相加后进行更新  voteDepartment + = department2
                department2.setGood(voteDepartment.getGood()+department2.getGood());
                department2.setLessGood(voteDepartment.getLessGood()+department2.getLessGood());
                department2.setCommon(voteDepartment.getCommon()+department2.getCommon());
                department2.setBad(voteDepartment.getBad()+department2.getBad());
                voteDao.updateVoteDepartmentRecord(department2);
            }            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;

        
    }
    /*
     * 根据类型对单位打分
     * */
    @Override
    public void  addVoteToDepartment(Map dataMap,int type) {
        for (Object id : dataMap.keySet()) {
            VoteDepartment voteDepartment = new VoteDepartment(0,0,0,0,0.0);
            voteDepartment.setType(type);
            voteDepartment.setYear(localYear);
            String voteResult =(String) dataMap.get(id);
            voteDepartment.setDepartmentID(Integer.valueOf(id.toString()));
            //通过DepartmentID获取departmentName
            String  departmentName = qualitativeDao.getDepartmentById(Integer.valueOf(id.toString())).getDepartmentName();
            voteDepartment.setDepartmentName(departmentName);
            //将投票结果设置到对应的属性
            if(voteResult.equals("good")) {
                voteDepartment.setGood(1);
            } 
            if(voteResult.equals("lessGood")) {
                voteDepartment.setLessGood(1);            
            }
            if(voteResult.equals("common")) {
                voteDepartment.setCommon(1);
            }
            if(voteResult.equals("bad")) {
                voteDepartment.setBad(1);
            }
            //查询数据库是否有该年份 该投票类型 该部门 的记录，有则在原来的记录上更新，没有则直接插入
            VoteDepartment  queryVoteDepartment = voteDao.queryVoteDepartmentRecord(voteDepartment);
            Double sum = (double) 0;
            if (null==queryVoteDepartment) {
                sum = 0.9*voteDepartment.getGood() + 0.75*voteDepartment.getLessGood() + 0.6*voteDepartment.getCommon() + 0.4*voteDepartment.getBad();
                voteDepartment.setSum(sum);
                voteDao.addVoteDepartmentRecord(voteDepartment);
            }else {
                int good = (voteDepartment.getGood()==null?0:voteDepartment.getGood())+(queryVoteDepartment.getGood()==null?0:queryVoteDepartment.getGood());
                int lessGood = (voteDepartment.getLessGood()==null?0:voteDepartment.getLessGood())+(queryVoteDepartment.getLessGood()==null?0:queryVoteDepartment.getLessGood());
                int common = (voteDepartment.getCommon()==null?0:voteDepartment.getCommon())+(queryVoteDepartment.getCommon()==null?0:queryVoteDepartment.getCommon());
                int bad = (voteDepartment.getBad()==null?0:voteDepartment.getBad())+(queryVoteDepartment.getBad()==null?0:queryVoteDepartment.getBad());
                
                voteDepartment.setGood(good);
                voteDepartment.setLessGood(lessGood);
                voteDepartment.setCommon(common);
                voteDepartment.setBad(bad);
                sum = 9*voteDepartment.getGood() + 7.5*voteDepartment.getLessGood() + 6*voteDepartment.getCommon() + 4*voteDepartment.getBad();
                voteDepartment.setSum(sum);
                voteDao.updateVoteDepartmentRecord(voteDepartment);
            }            
        }                  
    }
    
    /*
     * 根据类型对正职打分
     * */
    @Override
    public void  addVoteToCadre(Map dataMap,int type) {
        for (Object id : dataMap.keySet()) {
            VoteCadre voteCadre = new VoteCadre(0,0,0,0,0.0);
            voteCadre.setType(type);
            voteCadre.setYear(localYear);
            String voteResult =(String) dataMap.get(id);
            voteCadre.setCadreID(Integer.valueOf(id.toString()));
            //通过CadreID获取CadreName 
            String  cadreName = qualitativeDao.getCadreById(Integer.valueOf(id.toString())).getCadreName();
            voteCadre.setCadreName(cadreName);
            //将投票结果设置到对应的属性
            if(voteResult.equals("good")) {
                voteCadre.setGood(1);
            } 
            if(voteResult.equals("lessGood")) {
                voteCadre.setLessGood(1);            
            }
            if(voteResult.equals("common")) {
                voteCadre.setCommon(1);
            }
            if(voteResult.equals("bad")) {
                voteCadre.setBad(1);
            }
            //查询数据库是否有该年份 该投票类型 该部门 的记录，有则在原来的记录上更新，没有则直接插入
            VoteCadre  queryVoteCadre = voteDao.queryVoteCadreRecord(voteCadre);
            Double sum = (double) 0;
            if (null==queryVoteCadre) {
                sum = 9*voteCadre.getGood() + 7.5*voteCadre.getLessGood() + 6*voteCadre.getCommon() + 4*voteCadre.getBad();
                voteCadre.setSum(sum);
                voteDao.addVoteCadreRecord(voteCadre);
            }else {
                int good = (voteCadre.getGood()==null?0:voteCadre.getGood())+(queryVoteCadre.getGood()==null?0:queryVoteCadre.getGood());
                int lessGood = (voteCadre.getLessGood()==null?0:voteCadre.getLessGood())+(queryVoteCadre.getLessGood()==null?0:queryVoteCadre.getLessGood());
                int common = (voteCadre.getCommon()==null?0:voteCadre.getCommon())+(queryVoteCadre.getCommon()==null?0:queryVoteCadre.getCommon());
                int bad = (voteCadre.getBad()==null?0:voteCadre.getBad())+(queryVoteCadre.getBad()==null?0:queryVoteCadre.getBad());
                
                voteCadre.setGood(good);
                voteCadre.setLessGood(lessGood);
                voteCadre.setCommon(common);
                voteCadre.setBad(bad);
                sum = 9*voteCadre.getGood() + 7.5*voteCadre.getLessGood() + 6*voteCadre.getCommon() + 4*voteCadre.getBad();
                voteCadre.setSum(sum); 
                voteDao.updateVoteCadreRecord(voteCadre);
            }            
        }                  
    }
}
