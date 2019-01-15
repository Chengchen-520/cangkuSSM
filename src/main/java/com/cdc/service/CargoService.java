package com.cdc.service;

import com.cdc.pojo.Cargo;

import java.util.List;

public interface CargoService {
    //按类型
    public List<Cargo> queryForType(Cargo cargo);
    //按名字查询
    public List<Cargo> queryForName(Cargo cargo);
    //查询全部信息
    public List<Cargo> queryAll();
    //添加货物信息
    public void insertCargo(Cargo cargo);
    //按名称修改货物信息
    public void updateCargo(Cargo cargo);
    //删除货物信息
    public void deleteCargo(Cargo cargo);
    //模糊查询
    public List<Cargo> queryCargoLike1(String like);
    public List<Cargo> queryCargoLike2(String like);
}
