package com.bluedot.po;
/**
 * 处级干部个人信息类
 * @author hxp
 * 2018年11月29日 下午9:12:50
 */
public class Cadre {
    /*
     * 处级干部ID
     * */
    private Integer cadreID;
    /*
     * 工资编号
     * */
    private Integer salaryID;
    /*
     * 干部项目
     * */
    private String cadreName;
    /*
     * 职称  职位
     * */
    private String position;
    /*
     * 级别：正处级 副处级
     * */
    private String rank;
    /*
     * 所在单位，对应数据库表的unitID
     * */
    private Unit unit;
    public Cadre(Integer cadreID, Integer salaryID, String cadreName, String position, String rank, Unit unit) {
        super();
        this.cadreID = cadreID;
        this.salaryID = salaryID;
        this.cadreName = cadreName;
        this.position = position;
        this.rank = rank;
        this.unit = unit;
    }
    public Integer getCadreID() {
        return cadreID;
    }
    public void setCadreID(Integer cadreID) {
        this.cadreID = cadreID;
    }
    public Integer getSalaryID() {
        return salaryID;
    }
    public void setSalaryID(Integer salaryID) {
        this.salaryID = salaryID;
    }
    public String getCadreName() {
        return cadreName;
    }
    public void setCadreName(String cadreName) {
        this.cadreName = cadreName;
    }
    public String getPosition() {
        return position;
    }
    public void setPosition(String position) {
        this.position = position;
    }
    public String getRank() {
        return rank;
    }
    public void setRank(String rank) {
        this.rank = rank;
    }
    public Unit getUnit() {
        return unit;
    }
    public void setUnit(Unit unit) {
        this.unit = unit;
    }
    @Override
    public String toString() {
        return "Cadre [cadreID=" + cadreID + ", salaryID=" + salaryID + ", cadreName=" + cadreName + ", position="
                + position + ", rank=" + rank + ", unit=" + unit + "]";
    }
    
    
}
