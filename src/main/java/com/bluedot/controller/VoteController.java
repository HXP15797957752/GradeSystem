package com.bluedot.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bluedot.service.VoteService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

/**
 * 定性评分投票控制类
 * @author hxp
 * 2018年12月5日 下午5:21:20
 */

@Controller
@RequestMapping("/schoolgrade")
public class VoteController {
    @Autowired
    private VoteService voteService;
    /*
     * 对单位及个人投票记录
     * */
    @RequestMapping("/vote")
    public void addVoteRecord(HttpServletRequest request) {
        try {
            String unit = request.getParameter("unitMap");
            String data =request.getParameter("dataMap");
            Map unitMap = (Map)JSON.parse(unit);
            Map dataMap = (Map)JSON.parse(data);
            
            voteService.addVoteRecorde(unitMap,dataMap);
        } catch (Exception e) {            
            e.printStackTrace();
        }
    }
    /*
     * 对单位打分存储类
     * */
    @RequestMapping("/votedepartment")
    @ResponseBody
    public void addVoteToDepartment(HttpServletRequest request,@RequestParam("type") int type) {
        String data =request.getParameter("dataMap");
        Map dataMap = (Map)JSON.parse(data);
        if (null!=dataMap) {
            voteService.addVoteToDepartment(dataMap,type);
        }
    }
    
    /*
     * 对正职打分存储类
     * */
    @RequestMapping("/votecadre")
    @ResponseBody
    public void addVoteToCadre(HttpServletRequest request,@RequestParam("type") int type) {
        String data =request.getParameter("dataMap");
        Map dataMap = (Map)JSON.parse(data);
        if (null!=dataMap) {
            voteService.addVoteToCadre(dataMap,type);
        }
    }
   
}
