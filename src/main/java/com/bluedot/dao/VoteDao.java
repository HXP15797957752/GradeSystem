package com.bluedot.dao;

import com.bluedot.po.VoteCadre;
import com.bluedot.po.VoteDepartment;

public interface VoteDao {
    int addVoteDepartmentRecord(VoteDepartment voteDepartment);
    
    int addVoteCadreRecord(VoteCadre voteCadre);
    
    int updateVoteCadreRecord(VoteCadre voteCadre);

    int updateVoteDepartmentRecord(VoteDepartment voteDepartment);
    /*
     * 通过voteDepartment的departmentID year  type查询
     * */
    VoteDepartment queryVoteDepartmentRecord(VoteDepartment voteDepartment);
    
    VoteCadre queryVoteCadreRecord(VoteCadre voteCadre);


}
