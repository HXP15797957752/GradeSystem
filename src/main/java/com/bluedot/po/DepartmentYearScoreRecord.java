package com.bluedot.po;
/**
 * 单位年度总分记录类
 * @author hxp
 * 2018年12月13日 下午7:56:14
 */
public class DepartmentYearScoreRecord {
    private Integer id;
    private Integer year;
    private Integer departmentID;
    private String departmentName;
    private Double yearScore;
    public DepartmentYearScoreRecord() {
        super();
    }
    public DepartmentYearScoreRecord(Integer year, Integer departmentID, String departmentName, Double yearScore) {
        super();
        this.year = year;
        this.departmentID = departmentID;
        this.departmentName = departmentName;
        this.yearScore = yearScore;
    }
    
    public DepartmentYearScoreRecord(Integer year, Integer departmentID) {
        super();
        this.year = year;
        this.departmentID = departmentID;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getYear() {
        return year;
    }
    public void setYear(Integer year) {
        this.year = year;
    }
    public Integer getDepartmentID() {
        return departmentID;
    }
    public void setDepartmentID(Integer departmentID) {
        this.departmentID = departmentID;
    }
    public String getDepartmentName() {
        return departmentName;
    }
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
    public Double getYearScore() {
        return yearScore;
    }
    public void setYearScore(Double yearScore) {
        this.yearScore = yearScore;
    }
    @Override
    public String toString() {
        return "DepartmentYearScoreRecord [id=" + id + ", year=" + year + ", departmentID=" + departmentID
                + ", departmentName=" + departmentName + ", yearScore=" + yearScore + "]";
    }
    
    
    
}
