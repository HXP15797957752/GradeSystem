package com.bluedot.po;

import java.math.BigDecimal;

import com.bluedot.utils.NumberUtil;

/**
 * 最终考核评分统计表视图类
 * @author hxp
 * 2018年12月13日 上午10:16:21
 */
public class GradeDepartmentView {
    //对应部门ID
    private Integer viewID;
    //单位名称
    private String departmentName;
    //校领导打分
    private Double leaderScore ;
    //校领导折算得分
    private Double leaderScore_rate;
    //单位内部测评（好、较好 、一般、较差、总分）
    private VoteDepartment departmentInnerVote;
    //单位内部折算得分
    private Double departmentInnerScore_rate;
    //学校民主测评（好、较好 、一般、较差、总分）
    private VoteDepartment schoolVote;
    //学校民主测评折算得分
    private Double schoolVoteScore_rate;
    //定量得分
    private Double quantifyScore;
    //定量折算得分
    private Double quantifySocre_rate;
    //年度单位考核总分
    private Double departmentYearScore;
    //校领导对教学单位打分比例
    public static final Double LEADER_TO_TEACH_RATE = 0.1;
    //校领导对管理单位打分比例
    public static final Double LEADER_TO_MANAGE_RATE = 0.2;
    //单位内部测评打分比例
    public static final Double DEPARTMENT_INNER_RATE = 0.2;
    //学校民主对教学测评比例
    public static final Double SCHOOL_TO_TEACH_RATE = 0.1;
    //学校民主对管理测评比例
    public static final Double SCHOOL_TO_MANAGE_RATE = 0.2;
    //定量对教学打分比例
    public static final Double QUANTIFY_TO_TEACH_RATE = 0.6;
    //定量对教学打分比例
    public static final Double QUANTIFY_TO_MANAGE_RATE = 0.4;
    
    
    public Integer getViewID() {
        return viewID;
    }
    public void setViewID(Integer viewID) {
        this.viewID = viewID;
    }
    public Double getLeaderScore() {
        return leaderScore;
    }
    public void setLeaderScore(Double leaderScore) {
        this.leaderScore = NumberUtil.DoubleConvert(leaderScore, 3);
    }
    public Double getLeaderScore_rate() {
        return leaderScore_rate;
    }
    public void setLeaderScore_rate(Double leaderScore_rate) {
        this.leaderScore_rate = NumberUtil.DoubleConvert(leaderScore_rate, 3);
    }
    public VoteDepartment getDepartmentInnerVote() {
        return departmentInnerVote;
    }
    public void setDepartmentInnerVote(VoteDepartment departmentInnerVote) {
        this.departmentInnerVote = departmentInnerVote;
    }
    public Double getDepartmentInnerScore_rate() {
        return departmentInnerScore_rate;
    }
    public void setDepartmentInnerScore_rate(Double departmentInnerScore_rate) {
        this.departmentInnerScore_rate = NumberUtil.DoubleConvert(departmentInnerScore_rate, 3);
    }
    public VoteDepartment getSchoolVote() {
        return schoolVote;
    }
    public void setSchoolVote(VoteDepartment schoolVote) {
        this.schoolVote = schoolVote;
    }
    public Double getQuantifyScore() {
        return quantifyScore;
    }
    public void setQuantifyScore(Double quantifyScore) {
        this.quantifyScore = NumberUtil.DoubleConvert(quantifyScore, 3);
    }
    public Double getQuantifySocre_rate() {
        return quantifySocre_rate;
    }
    public void setQuantifySocre_rate(Double quantifySocre_rate) {
        this.quantifySocre_rate = NumberUtil.DoubleConvert(quantifySocre_rate, 3);
    }
    public Double getDepartmentYearScore() {
        return departmentYearScore;
    }
    public void setDepartmentYearScore(Double departmentYearScore) {
        this.departmentYearScore = NumberUtil.DoubleConvert(departmentYearScore, 3);
    }
    
    public Double getSchoolVoteScore_rate() {
        return schoolVoteScore_rate;
    }
    public void setSchoolVoteScore_rate(Double schoolVoteScore_rate) {
        this.schoolVoteScore_rate = NumberUtil.DoubleConvert(schoolVoteScore_rate, 3);
    }
    
    public String getDepartmentName() {
        return departmentName;
    }
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
    @Override
    public String toString() {
        return "GradeDepartmentView [ID=" + viewID + ", departmentName=" + departmentName + ", leaderScore=" + leaderScore
                + ", leaderScore_rate=" + leaderScore_rate + ", departmentInnerVote=" + departmentInnerVote
                + ", departmentInnerScore_rate=" + departmentInnerScore_rate + ", schoolVote=" + schoolVote
                + ", schoolVoteScore_rate=" + schoolVoteScore_rate + ", quantifyScore=" + quantifyScore
                + ", quantifySocre_rate=" + quantifySocre_rate + ", departmentYearScore=" + departmentYearScore + "]";
    }
    
    
            
    
}
