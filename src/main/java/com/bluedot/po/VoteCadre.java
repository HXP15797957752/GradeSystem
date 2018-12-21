package com.bluedot.po;
/**
 * 被投票干部类，继承voteObject
 * @author hxp
 * 2018年12月5日 下午4:44:56
 */
public class VoteCadre extends VoteObject{
    /*
     * 干部ID
     * */ 
    private Integer cadreID;
    /*
     * 干部姓名
     * */
    private String cadreName;
    
    public VoteCadre() {super();}
    public VoteCadre(Integer good, Integer lessGood, Integer common, Integer bad, Double sum) {
        super(good, lessGood, common, bad, sum);
    }
    public Integer getCadreID() {
        return cadreID;
    }
    public void setCadreID(Integer cadreID) {
        this.cadreID = cadreID;
    }
    public String getCadreName() {
        return cadreName;
    }
    public void setCadreName(String cadreName) {
        this.cadreName = cadreName;
    }
    @Override
    public String toString() {
        return "VoteCadre [cadreID=" + cadreID + ", cadreName=" + cadreName + ", toString()=" + super.toString() + "]";
    }
     
    
}
