package com.bluedot.service.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.QualitativeDao;
import com.bluedot.dao.VoteDao;
import com.bluedot.po.Department;
import com.bluedot.po.GradeDepartmentView;
import com.bluedot.po.QuantifyYearGrade;
import com.bluedot.po.VoteDepartment;
import com.bluedot.service.ComputeService;
/**
 * 总分计算业务实现类 实现ComputeService接口
 * @author hxp
 * 2018年12月10日 下午7:17:20
 */
@Service("computeService")
public class ComputeServiceImpl implements ComputeService {
    @Autowired
    private QualitativeDao qualitativeDao;
    @Autowired
    private VoteDao voteDao;
    
    /*
     * 计算教学单位年度总分，并返回一个list给controller
     * */
    @Override
    public List<GradeDepartmentView> loadTeachYearScore() {
        //需要用来装GradeDepartmentView的List
        List <GradeDepartmentView> viewList  = new ArrayList();
        //查询教学部门集合
        List<Department>  departmentList  = qualitativeDao.queryDepartmentByType(1);
         
        for(Department department:departmentList) {
            VoteDepartment voteDepartment = new VoteDepartment();
            //设置年份
            voteDepartment.setYear(LocalDate.now().getYear());
            Integer id  = department.getDepartmentId();    
            voteDepartment.setDepartmentID(id);
            GradeDepartmentView view = new GradeDepartmentView();
            view.setViewID(id);
            view.setDepartmentName(department.getDepartmentName());
            //通过部门Id 年份 类型 查询GradeDepartmentView的成员变量，并赋值
            //设置校领导对单位打分类型（7） 
            voteDepartment.setType(7);
            VoteDepartment queryLeaderVote = voteDao.queryVoteDepartmentRecord(voteDepartment);
            VoteDepartment leaderVote = queryLeaderVote == null? new VoteDepartment(0,0,0,0,0.0):queryLeaderVote;
            //设置单位内部对单位打分类型（1） 
            voteDepartment.setType(1);
            VoteDepartment queryDepartmentInnerVote = voteDao.queryVoteDepartmentRecord(voteDepartment);
            VoteDepartment departmentInnerVote = queryDepartmentInnerVote == null? new VoteDepartment(0,0,0,0,0.0):queryDepartmentInnerVote;
            //设置学校民主对单位打分类型（5） 
            voteDepartment.setType(5);
            VoteDepartment querySchoolVote = voteDao.queryVoteDepartmentRecord(voteDepartment);
            VoteDepartment schoolVote = querySchoolVote == null?new VoteDepartment(0,0,0,0,0.0):querySchoolVote;
            //通过计算分别为GradeDepartmentView赋值
            view.setLeaderScore(leaderVote.getSum());
            view.setLeaderScore_rate(leaderVote.getSum()*GradeDepartmentView.LEADER_TO_TEACH_RATE);
            view.setDepartmentInnerVote(departmentInnerVote);
            view.setDepartmentInnerScore_rate(departmentInnerVote.getSum()*GradeDepartmentView.DEPARTMENT_INNER_RATE);
            view.setSchoolVote(schoolVote);
            view.setSchoolVoteScore_rate(schoolVote.getSum()*GradeDepartmentView.SCHOOL_TO_TEACH_RATE);
            //定量评价总分
            QuantifyYearGrade quantifyYearGrade = new QuantifyYearGrade();
            quantifyYearGrade.setDepartmentId(id);
            quantifyYearGrade.setYear(LocalDate.now().getYear());
            QuantifyYearGrade query_quantify_score = qualitativeDao.queryDepartmentQuantifyGrade(quantifyYearGrade);
            QuantifyYearGrade quantify_score = query_quantify_score ==null? new QuantifyYearGrade(0.0):query_quantify_score;
            //设置定量评分
            view.setQuantifyScore(quantify_score.getSumGrade());
            //计算并设置定量评分折算得分
            view.setQuantifySocre_rate(quantify_score.getSumGrade()*GradeDepartmentView.QUANTIFY_TO_TEACH_RATE);
            //计算并设置教学单位年度考核总分
            view.setDepartmentYearScore(view.getLeaderScore_rate()+view.getDepartmentInnerScore_rate()+view.getSchoolVoteScore_rate()+view.getQuantifySocre_rate());
            viewList.add(view);
        }
        return viewList;
    }
    /*
     * 计算管理单位年度总分，并返回一个list给controller
     * */
    @Override
    public List<GradeDepartmentView> loadManageYearScore() {
      //需要用来装GradeDepartmentView的List
        List <GradeDepartmentView> viewList  = new ArrayList();
        //查询管理部门集合
        List<Department>  departmentList  = qualitativeDao.queryDepartmentByType(2);
         
        for(Department department:departmentList) {
            VoteDepartment voteDepartment = new VoteDepartment();
            //设置年份
            voteDepartment.setYear(LocalDate.now().getYear());
            Integer id  = department.getDepartmentId();    
            voteDepartment.setDepartmentID(id);
            GradeDepartmentView view = new GradeDepartmentView();
            view.setViewID(id);
            view.setDepartmentName(department.getDepartmentName());
            //通过部门Id 年份 类型 查询GradeDepartmentView的成员变量，并赋值
            //设置校领导对单位打分类型（7） 
            voteDepartment.setType(7);
            VoteDepartment queryLeaderVote = voteDao.queryVoteDepartmentRecord(voteDepartment);
            VoteDepartment leaderVote = queryLeaderVote == null? new VoteDepartment(0,0,0,0,0.0):queryLeaderVote;
            //设置单位内部对单位打分类型（1） 
            voteDepartment.setType(1);
            VoteDepartment queryDepartmentInnerVote = voteDao.queryVoteDepartmentRecord(voteDepartment);
            VoteDepartment departmentInnerVote = queryDepartmentInnerVote == null? new VoteDepartment(0,0,0,0,0.0):queryDepartmentInnerVote;
            //设置学校民主对单位打分类型（5） 
            voteDepartment.setType(5);
            VoteDepartment querySchoolVote = voteDao.queryVoteDepartmentRecord(voteDepartment);
            VoteDepartment schoolVote = querySchoolVote == null?new VoteDepartment(0,0,0,0,0.0):querySchoolVote;
            //通过计算分别为GradeDepartmentView赋值
            view.setLeaderScore(leaderVote.getSum());
            view.setLeaderScore_rate(leaderVote.getSum()*GradeDepartmentView.LEADER_TO_MANAGE_RATE);
            view.setDepartmentInnerVote(departmentInnerVote);
            view.setDepartmentInnerScore_rate(departmentInnerVote.getSum()*GradeDepartmentView.DEPARTMENT_INNER_RATE);
            view.setSchoolVote(schoolVote);
            view.setSchoolVoteScore_rate(schoolVote.getSum()*GradeDepartmentView.SCHOOL_TO_MANAGE_RATE);
            //定量评价总分
            QuantifyYearGrade quantifyYearGrade = new QuantifyYearGrade();
            quantifyYearGrade.setDepartmentId(id);
            quantifyYearGrade.setYear(LocalDate.now().getYear());
            QuantifyYearGrade query_quantify_score = qualitativeDao.queryDepartmentQuantifyGrade(quantifyYearGrade);
            QuantifyYearGrade quantify_score = query_quantify_score ==null? new QuantifyYearGrade(0.0):query_quantify_score;
            //设置定量评分
            view.setQuantifyScore(quantify_score.getSumGrade());
            //计算并设置定量评分折算得分
            view.setQuantifySocre_rate(quantify_score.getSumGrade()*GradeDepartmentView.QUANTIFY_TO_MANAGE_RATE);
            //计算并设置教学单位年度考核总分
            view.setDepartmentYearScore(view.getLeaderScore_rate()+view.getDepartmentInnerScore_rate()+view.getSchoolVoteScore_rate()+view.getQuantifySocre_rate());
            viewList.add(view);
        }
        return viewList;
    }
    
    

}
