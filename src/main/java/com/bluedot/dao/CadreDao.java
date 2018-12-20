package com.bluedot.dao;

import com.bluedot.po.Cadre;

/**
 * 处级干部数据库操作类
 * @author hxp
 * 2018年12月19日 下午2:16:12
 */
public interface CadreDao {
    public void addCadre(Cadre cadre);

    public void updateCadre(Cadre cadre);
}
