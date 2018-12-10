package com.bluedot.po;
/**
 * 被投票对象，有以下相同属性，因此抽象出来形成父类
 * @author hxp
 * 2018年12月5日 下午4:40:18
 */
public class VoteObject {
    /*
     * 用于记录投票的ID
     * */
    private Integer voteID;
    /*
     * 年份
     * */
    private Integer year;
    /* 
     * 投票类型
     * */
    private Integer type;
    /*
     * 好
     * */
    private Integer good;
    /*
     * 较好
     * */
    private Integer lessGood;
    /*
     * 一般
     * */
    private Integer common;
    /*
     * 较差
     * */
    private Integer bad;
    public Integer getVoteID() {
        return voteID;
    }
    public void setVoteID(Integer voteID) {
        this.voteID = voteID;
    }
    
    public Integer getYear() {
        return year;
    }
    public void setYear(Integer year) {
        this.year = year;
    }
    public Integer getType() {
        return type;
    }
    public void setType(Integer type) {
        this.type = type;
    }
    public Integer getGood() {
        return good;
    }
    public void setGood(Integer good) {
        this.good = good;
    }
    public Integer getLessGood() {
        return lessGood;
    }
    public void setLessGood(Integer lessGood) {
        this.lessGood = lessGood;
    }
    public Integer getCommon() {
        return common;
    }
    public void setCommon(Integer common) {
        this.common = common;
    }
    public Integer getBad() {
        return bad;
    }
    public void setBad(Integer bad) {
        this.bad = bad;
    }
    @Override
    public String toString() {
        return "VoteObject [voteID=" + voteID + ", year=" + year + ", type=" + type + ", good=" + good + ", lessGood="
                + lessGood + ", common=" + common + ", bad=" + bad + "]";
    }
   
    
}
