package com.bluedot.service;

import java.util.Map;

/**
 * 定性评分投票service接口
 * @author hxp
 * 2018年12月5日 下午10:54:54
 */
public interface VoteService {

    int addVoteRecorde(Map unitMap, Map dataMap) throws NoSuchMethodException, SecurityException;

    void addVoteToDepartment(Map dataMap,int type);

    void addVoteToCadre(Map dataMap,int type);

}
