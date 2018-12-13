package com.bluedot.po;
/**
 * 被投票干部类，继承voteObject
 * @author hxp
 * 2018年12月5日 下午4:44:56
 */
public class VoteDepartment extends VoteObject{
    /*
     * 单位ID
     * */ 
    private Integer departmentID;
    /*
     * 单位姓名
     * */
    private String departmentName;
    public VoteDepartment() {super();}
    public VoteDepartment(Integer good, Integer lessGood, Integer common, Integer bad, Double sum) {
        super(good, lessGood, common, bad, sum);
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
    @Override
    public String toString() {
        return "VoteDepartment [departmentID=" + departmentID + ", departmentName=" + departmentName + ", toString()="
                + super.toString() + "]";
    }
    
     
    
}
