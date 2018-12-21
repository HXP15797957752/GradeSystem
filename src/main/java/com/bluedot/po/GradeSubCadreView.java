package com.bluedot.po;

import com.bluedot.utils.NumberUtil;

public class GradeSubCadreView {
    //对应副职ID
    private Integer viewID;
    //单位名称
    private String departmentName;
    //副职名字
    private String cadreName;
    //单位内部测评（好、较好 、一般、较差、总分）
    private VoteCadre departmentInnerVote;
    //单位内部折算得分
    private Double departmentInnerScore_rate; 
    //年度本单位考核得分
    private Double departmentYearGrade;
    //年度本单位折算得分
    private Double departmentYearGrade_rate; 
    //正职对副职测评（好、较好 、一般、较差、总分）
    private VoteCadre cadreVote;
    //正职对副职折算得分
    private Double cadreScore_rate; 
    //副职年度考核总分
    private Double subCadre_year_score;
    //单位内部测评打分比例
    public static final Double DEPARTMENT_INNER_RATE = 0.5;
    //年度本单位考核得分比例
    public static final Double DEPARTMENT_YEAR_SCORE_RATE = 0.4;
    //正职对副职打分比例
    public static final Double CADRE_TO_SUBCADRE_RATE = 0.1;
    public GradeSubCadreView() {
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
    
    public VoteCadre getDepartmentInnerVote() {
        return departmentInnerVote;
    }
    public void setDepartmentInnerVote(VoteCadre departmentInnerVote) {
        this.departmentInnerVote = departmentInnerVote;
    }
    public Double getDepartmentInnerScore_rate() {
        return departmentInnerScore_rate;
    }
    public void setDepartmentInnerScore_rate(Double departmentInnerScore_rate) {
        this.departmentInnerScore_rate = NumberUtil.DoubleConvert(departmentInnerScore_rate, 3);
    }
    public Double getDepartmentYearGrade() {
        return departmentYearGrade;
    }
    public void setDepartmentYearGrade(Double departmentYearGrade) {
        this.departmentYearGrade = NumberUtil.DoubleConvert(departmentYearGrade, 3);
    }
    public Double getDepartmentYearGrade_rate() {
        return departmentYearGrade_rate;
    }
    public void setDepartmentYearGrade_rate(Double departmentYearGrade_rate) {
        this.departmentYearGrade_rate = NumberUtil.DoubleConvert(departmentYearGrade_rate, 3);
    }
    public VoteCadre getCadreVote() {
        return cadreVote;
    }
    public void setCadreVote(VoteCadre cadreVote) {
        this.cadreVote = cadreVote;
    }
    public Double getCadreScore_rate() {
        return cadreScore_rate;
    }
    public void setCadreScore_rate(Double cadreScore_rate) {
        this.cadreScore_rate = NumberUtil.DoubleConvert(cadreScore_rate, 3);
    }
    public Double getSubCadre_year_score() {
        return subCadre_year_score;
    }
    public void setSubCadre_year_score(Double subCadre_year_score) {
        this.subCadre_year_score = NumberUtil.DoubleConvert(subCadre_year_score, 3);
    }
    @Override
    public String toString() {
        return "GradeSubCadreView [viewID=" + viewID + ", departmentName=" + departmentName + ", cadreName=" + cadreName
                + ", departmentInnerVote=" + departmentInnerVote + ", departmentInnerScore_rate="
                + departmentInnerScore_rate + ", departmentYearGrade=" + departmentYearGrade
                + ", departmentYearGrade_rate=" + departmentYearGrade_rate + ", cadreVote=" + cadreVote
                + ", cadreScore_rate=" + cadreScore_rate + ", subCadre_year_score=" + subCadre_year_score + "]";
    }
    
        
}
