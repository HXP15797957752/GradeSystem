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
     * 级别：0正处级  1副处级
     * */
    private Integer rank;
    /*
     * 所在单位部门ID
     * */
    private Integer departmentId;
    /*
     * 所在单位
     * */
    private Department ofDepartment;
    
    public Cadre() {
        super();
    }

    public Cadre(Integer cadreID,Integer salaryID,String cadreName,String position,Integer rank) {
        this.cadreID = cadreID;
        this.salaryID = salaryID;
        this.cadreName = cadreName;
        this.position = position;
        this.rank = rank;
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

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Department getOfDepartment() {
        return ofDepartment;
    }

    public void setOfDepartment(Department ofDepartment) {
        this.ofDepartment = ofDepartment;
    }

    @Override
    public String toString() {
        return "Cadre [cadreID=" + cadreID + ", salaryID=" + salaryID + ", cadreName=" + cadreName + ", position="
                + position + ", rank=" + rank + ", departmentId=" + departmentId + ", ofDepartment=" + ofDepartment
                + "]";
    }

    
}