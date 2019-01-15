package com.cdc.service;

import com.cdc.pojo.C_P;

import java.util.List;

public interface C_PService {
    //按员工名称读取
    public List<C_P> queryByName(String user_name);
    //获得全部信息
    public List<C_P> queryAll();
    //按名字删除记录
    public void deletePerson(String name);
    //全部匹配删除
    public void deleteCp(C_P cp);
    //添加记录
    public void insertCp(C_P cp);
}
