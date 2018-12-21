package com.bluedot.po;

import com.bluedot.utils.NumberUtil;

/**
 * 最终考核正职评分视图类
 * @author hxp
 * 2018年12月13日 下午6:26:40
 */
public class GradeCadreView {
    //对应正职ID
    private Integer viewID;
    //单位名称
    private String departmentName;
    //正职名称
    private String cadreName;
    //单位内部测评（好、较好 、一般、较差、总分）
    private VoteCadre departmentInnerVote;
    //单位内部折算得分
    private Double departmentInnerScore_rate;    
    //学校民主测评（好、较好 、一般、较差、总分）
    private VoteCadre schoolVote;
    //学校民主测评折算得分
    private Double schoolVoteScore_rate;
    //年度本单位考核得分
    private Double departmentYearGrade;
    //年度本单位折算得分
    private Double departmentYearGrade_rate;
    //校领导打分
    private Double leaderScore ;
    //校领导折算得分
    private Double leaderScore_rate;
    //正职年度考核总分
    private Double cadre_year_score;
    //单位内部测评打分比例
    public static final Double DEPARTMENT_INNER_RATE = 0.3;
    //学校民主对教学测评比例
    public static final Double SCHOOL_TO_CADRE_RATE = 0.2;
    //年度按单位考核得分比例
    public static final Double DEPARTMENT_YEAR_SCORE_RATE = 0.3;
    //校领导打分比例
    public static final Double LEADER_TO_CADRE_RATE = 0.2;
      
    public GradeCadreView() {
        super();
    }
    public Integer getViewID() {
        return viewID;
    }
    public void setViewID(Integer viewID) {
        this.viewID = viewID;
    }
    
    public String getDepartmentName() {
        return departmentName;
    }
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
    public String getCadreName() {
        return cadreName;
    }
    public void setCadreName(String cadreName) {
        this.cadreName = cadreName;
    }
    
    public Double getDepartmentInnerScore_rate() {
        return departmentInnerScore_rate;
    }
    public void setDepartmentInnerScore_rate(Double departmentInnerScore_rate) {
        this.departmentInnerScore_rate = NumberUtil.DoubleConvert(departmentInnerScore_rate, 3);
    }
    
    public VoteCadre getDepartmentInnerVote() {
        return departmentInnerVote;
    }
    public void setDepartmentInnerVote(VoteCadre departmentInnerVote) {
        this.departmentInnerVote = departmentInnerVote;
    }
    public VoteCadre getSchoolVote() {
        return schoolVote;
    }
    public void setSchoolVote(VoteCadre schoolVote) {
        this.schoolVote = schoolVote;
    }
    public Double getSchoolVoteScore_rate() {
        return schoolVoteScore_rate;
    }
    public void setSchoolVoteScore_rate(Double schoolVoteScore_rate) {
        this.schoolVoteScore_rate = NumberUtil.DoubleConvert(schoolVoteScore_rate, 3);
    }
    public Double getDepartmentYearGrade() {
        return departmentYearGrade;
    }
    public void setDepartmentYearGrade(Double departmentYearGrade) {
        this.departmentYearGrade = departmentYearGrade;
    }
    public Double getDepartmentYearGrade_rate() {
        return departmentYearGrade_rate;
    }
    public void setDepartmentYearGrade_rate(Double departmentYearGrade_rate) {
        this.departmentYearGrade_rate = NumberUtil.DoubleConvert(departmentYearGrade_rate, 3);
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
    
    public Double getCadre_year_score() {
        return cadre_year_score;
    }
    public void setCadre_year_score(Double cadre_year_score) {
        this.cadre_year_score = NumberUtil.DoubleConvert(cadre_year_score, 3);
    }
    @Override
    public String toString() {
        return "GradeCadreView [viewID=" + viewID + ", departmentName=" + departmentName + ", cadreName=" + cadreName
                + ", departmentInnerVote=" + departmentInnerVote + ", departmentInnerScore_rate="
                + departmentInnerScore_rate + ", schoolVote=" + schoolVote + ", schoolVoteScore_rate="
                + schoolVoteScore_rate + ", departmentYearGrade=" + departmentYearGrade + ", departmentYearGrade_rate="
                + departmentYearGrade_rate + ", leaderScore=" + leaderScore + ", leaderScore_rate=" + leaderScore_rate
                + ", cadre_year_score=" + cadre_year_score + "]";
    }
    
    
}
