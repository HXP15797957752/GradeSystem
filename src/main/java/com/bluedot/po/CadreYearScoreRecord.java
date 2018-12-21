package com.bluedot.po;
/**
 *干部年度总分记录类
 * @author hxp
 * 2018年12月13日 下午7:52:17
 */
public class CadreYearScoreRecord {
    private Integer id;
    private Integer year;
    private Integer cadreID;
    private String cadreName;
    private Integer rank;
    private String departmentName;
    private Double yearScore;
    
    public CadreYearScoreRecord() {
        super();
    }

    public CadreYearScoreRecord(Integer year, Integer cadreID) {
        super();
        this.year = year;
        this.cadreID = cadreID;
    }

    public CadreYearScoreRecord(Integer year, Integer cadreID, String cadreName, Integer rank, String departmentName,
            Double yearScore) {
        super();
        this.year = year;
        this.cadreID = cadreID;
        this.cadreName = cadreName;
        this.rank = rank;
        this.departmentName = departmentName;
        this.yearScore = yearScore;
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

    public Integer getCadreID() {
        return cadreID;
    }

    public void setCadreeID(Integer cadreeID) {
        this.cadreID = cadreeID;
    }

    public String getCadreName() {
        return cadreName;
    }

    public void setCadreName(String cadreName) {
        this.cadreName = cadreName;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
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
        return "CadreYearScoreRecord [id=" + id + ", year=" + year + ", cadreeID=" + cadreID + ", cadreName="
                + cadreName + ", rank=" + rank + ", departmentName=" + departmentName + ", yearScore=" + yearScore
                + "]";
    }
    
}
