package com.bluedot.service.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.ComputeDao;
import com.bluedot.dao.QualitativeDao;
import com.bluedot.dao.VoteDao;
import com.bluedot.po.Cadre;
import com.bluedot.po.CadreYearScoreRecord;
import com.bluedot.po.Department;
import com.bluedot.po.DepartmentYearScoreRecord;
import com.bluedot.po.GradeCadreView;
import com.bluedot.po.GradeDepartmentView;
import com.bluedot.po.GradeSubCadreView;
import com.bluedot.po.QuantifyYearGrade;
import com.bluedot.po.VoteCadre;
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
    @Autowired
    private ComputeDao computeDao;
    
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
            //根据年份 单位ID查询教学单位年度总分，若存在则更新，不存在则新增
            DepartmentYearScoreRecord queryRecord =computeDao
                    .queryDepartmentYearScoreRecordByIDAndYear(new DepartmentYearScoreRecord((Integer)LocalDate.now().getYear(),id));
            if (null!=queryRecord) {
                computeDao.updateDepartmentYearScoreRecord(new DepartmentYearScoreRecord((Integer)LocalDate.now().getYear(),
                        id, view.getDepartmentName(), view.getDepartmentYearScore()));
            }else {
                computeDao.saveDepartmentYearScoreRecord(new DepartmentYearScoreRecord((Integer)LocalDate.now().getYear(),
                        id, view.getDepartmentName(), view.getDepartmentYearScore()));
            }
            viewList.add(view);
        }
        return viewList;
    }
    /*
     * 计算管理单位年度总分并存数据库，并返回一个list给controller
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
          //将单位年度总分保存到数据库
          //根据年份 单位ID查询教学单位年度总分，若存在则更新，不存在则新增
            DepartmentYearScoreRecord queryRecord =computeDao
                    .queryDepartmentYearScoreRecordByIDAndYear(new DepartmentYearScoreRecord((Integer)LocalDate.now().getYear(),id));
            if (null!=queryRecord) {
                computeDao.updateDepartmentYearScoreRecord(new DepartmentYearScoreRecord((Integer)LocalDate.now().getYear(),
                        id, view.getDepartmentName(), view.getDepartmentYearScore()));
            }else {
                computeDao.saveDepartmentYearScoreRecord(new DepartmentYearScoreRecord((Integer)LocalDate.now().getYear(),
                        id, view.getDepartmentName(), view.getDepartmentYearScore()));
            }
            viewList.add(view);
        }
        return viewList;
    }
    /*
     * 计算正职年度总分并存数据库，并返回一个list给controller
     * */
    @Override
    public List<GradeCadreView> loadCadreYearScore(){
        //用于返回的List
        List<GradeCadreView> viewList = new ArrayList<GradeCadreView>();
        //获取所有正职集合
        List<Cadre> cadreList = qualitativeDao.queryAllPlusCadre(0);
        for(Cadre cadre:cadreList) {
            //创建正职视图类对象并为成员变量赋值
            GradeCadreView view = new GradeCadreView();
            view.setViewID(cadre.getCadreID());
            Department department = cadre.getOfDepartment();
            view.setDepartmentName(department.getDepartmentName());
            view.setCadreName(cadre.getCadreName());
            VoteCadre  cadreVote = new VoteCadre();
            cadreVote.setType(2);
            cadreVote.setYear(LocalDate.now().getYear());
            cadreVote.setCadreID(cadre.getCadreID());
            //查询并赋值单位内部测评对象
            VoteCadre queryCadreVote = voteDao.queryVoteCadreRecord(cadreVote);
            VoteCadre cadreVoteView = queryCadreVote == null?new VoteCadre(0,0,0,0,0.0):queryCadreVote;
            view.setDepartmentInnerVote(cadreVoteView);
            view.setDepartmentInnerScore_rate(cadreVoteView.getSum()*GradeCadreView.DEPARTMENT_INNER_RATE);
            //查询并设置学校民主测评
            cadreVote.setType(6);
            VoteCadre querySchoolCadreVote = voteDao.queryVoteCadreRecord(cadreVote);
            VoteCadre cadreSchoolVoteView = (querySchoolCadreVote == null?new VoteCadre(0,0,0,0,0.0):querySchoolCadreVote);
            view.setSchoolVote(cadreSchoolVoteView);
            view.setSchoolVoteScore_rate(cadreSchoolVoteView.getSum()*GradeCadreView.SCHOOL_TO_CADRE_RATE);
            //查询并设置本单位年度考核得分
            DepartmentYearScoreRecord ds = computeDao.queryDepartmentYearScoreRecordByIDAndYear(new DepartmentYearScoreRecord((Integer)LocalDate.now()
                    .getYear(), cadre.getDepartmentId()));
            Double yearScore = (ds==null?0.0:ds.getYearScore());
            view.setDepartmentYearGrade(yearScore);
            view.setDepartmentYearGrade_rate(yearScore*GradeCadreView.DEPARTMENT_YEAR_SCORE_RATE);
            //查询并设置校领导评分
            cadreVote.setType(8);
            VoteCadre queryLeaderCadreVote = voteDao.queryVoteCadreRecord(cadreVote);
            VoteCadre cadreLeaderVoteView = queryLeaderCadreVote == null?new VoteCadre(0,0,0,0,0.0):queryLeaderCadreVote;
            view.setLeaderScore(cadreLeaderVoteView.getSum());
            view.setLeaderScore_rate(cadreLeaderVoteView.getSum()*GradeCadreView.LEADER_TO_CADRE_RATE);
            //计算正职干部考核总分
            view.setCadre_year_score(view.getDepartmentInnerScore_rate()+view.getSchoolVoteScore_rate()+
                    view.getDepartmentYearGrade_rate()+view.getLeaderScore_rate());
            //查询 更新干部年度总分
          //根据年份 ID查询干部年度总分，若存在则更新，不存在则新增
            CadreYearScoreRecord queryRecord =computeDao.queryCadreYearScoreRecordByIDAndYear(new CadreYearScoreRecord((Integer)LocalDate.now().getYear(),
                        cadre.getCadreID()));                   
            if (null!=queryRecord) {
                computeDao.updateCadreYearScoreRecord(new CadreYearScoreRecord((Integer)LocalDate.now().getYear(), cadre.getCadreID(), cadre.getCadreName(),
                        cadre.getRank(), cadre.getOfDepartment().getDepartmentName(), view.getCadre_year_score()));
            }else {
                computeDao.saveCadreYearScoreRecord(new CadreYearScoreRecord((Integer)LocalDate.now().getYear(), cadre.getCadreID(), cadre.getCadreName(),
                        cadre.getRank(), cadre.getOfDepartment().getDepartmentName(), view.getCadre_year_score()));
            }        
            viewList.add(view);
        }
        return viewList;
    }
    /*
     * 计算副职年度总分并存数据库，并返回一个list给controller
     * */
    @Override
    public List<GradeSubCadreView> loadSubCadreYearScore() {
      //用于返回的List
        List<GradeSubCadreView> viewList = new ArrayList<GradeSubCadreView>();
        //获取所有正职集合
        List<Cadre> cadreList = qualitativeDao.queryAllPlusCadre(1);
        for(Cadre cadre:cadreList) {
            //创建正职视图类对象并为成员变量赋值
            GradeSubCadreView view = new GradeSubCadreView();
            view.setViewID(cadre.getCadreID());
            Department department = cadre.getOfDepartment();
            view.setDepartmentName(department.getDepartmentName());
            view.setCadreName(cadre.getCadreName());
            VoteCadre  cadreVote = new VoteCadre();
            cadreVote.setType(3);
            cadreVote.setYear(LocalDate.now().getYear());
            cadreVote.setCadreID(cadre.getCadreID());
            //查询并赋值单位内部测评对象
            VoteCadre queryCadreVote = voteDao.queryVoteCadreRecord(cadreVote);
            VoteCadre cadreVoteView = (queryCadreVote == null?new VoteCadre(0,0,0,0,0.0):queryCadreVote);
            view.setDepartmentInnerVote(cadreVoteView);
            view.setDepartmentInnerScore_rate(cadreVoteView.getSum()*GradeSubCadreView.DEPARTMENT_INNER_RATE);
            //查询并设置单位正职对副职测评
            cadreVote.setType(4);
            VoteCadre queryCadreToSubcadreVote = voteDao.queryVoteCadreRecord(cadreVote);
            VoteCadre cadreToSubcadreVote = (queryCadreToSubcadreVote == null?new VoteCadre(0,0,0,0,0.0):queryCadreToSubcadreVote);
            view.setCadreVote(cadreToSubcadreVote);
            view.setCadreScore_rate(cadreToSubcadreVote.getSum()*GradeSubCadreView.CADRE_TO_SUBCADRE_RATE);
            //查询并设置本单位年度考核得分
            DepartmentYearScoreRecord ds = computeDao.queryDepartmentYearScoreRecordByIDAndYear(new DepartmentYearScoreRecord((Integer)LocalDate.now()
                    .getYear(), cadre.getDepartmentId()));
            Double yearScore = (ds==null?0.0:ds.getYearScore());
            view.setDepartmentYearGrade(yearScore);
            view.setDepartmentYearGrade_rate(yearScore*GradeSubCadreView.DEPARTMENT_YEAR_SCORE_RATE);
            
            //计算副职干部考核总分
            view.setSubCadre_year_score(view.getDepartmentInnerScore_rate()+view.getDepartmentYearGrade_rate()+view.getCadreScore_rate());
          //根据年份 ID查询干部年度总分，若存在则更新，不存在则新增
            CadreYearScoreRecord queryRecord =computeDao.queryCadreYearScoreRecordByIDAndYear(new CadreYearScoreRecord((Integer)LocalDate.now().getYear(),
                        cadre.getCadreID()));                   
            if (null!=queryRecord) {
                computeDao.updateCadreYearScoreRecord(new CadreYearScoreRecord((Integer)LocalDate.now().getYear(), cadre.getCadreID(), cadre.getCadreName(),
                        cadre.getRank(), cadre.getOfDepartment().getDepartmentName(), view.getSubCadre_year_score()));
            }else {
                computeDao.saveCadreYearScoreRecord(new CadreYearScoreRecord((Integer)LocalDate.now().getYear(), cadre.getCadreID(), cadre.getCadreName(),
                        cadre.getRank(), cadre.getOfDepartment().getDepartmentName(), view.getSubCadre_year_score()));
            } 
            viewList.add(view);
        }
        return viewList;
    }
    
    

}
