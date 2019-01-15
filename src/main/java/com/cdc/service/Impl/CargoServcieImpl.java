package com.cdc.service.Impl;


import com.cdc.mapper.CargoMapper;
import com.cdc.pojo.Cargo;
import com.cdc.service.CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CargoServcieImpl implements CargoService{

    @Autowired
    private CargoMapper cargoMapper;

    public List<Cargo> queryForType(Cargo cargo) {
        return cargoMapper.queryForType(cargo);
    }

    public List<Cargo> queryForName(Cargo cargo) {
        return cargoMapper.queryForName(cargo);
    }

    public List<Cargo> queryAll() {
        return cargoMapper.queryAll();
    }

    public void insertCargo(Cargo cargo) {
            Cargo product = cargoMapper.queryCargo(cargo.getName());
            if(product==null)
            {
                cargoMapper.insertCargo(cargo);
            }else{
                throw new RuntimeException("商品名已存在!");
            }

    }

    public void updateCargo(Cargo cargo) {
        cargoMapper.updateCargo(cargo);
    }

    public void deleteCargo(Cargo cargo) {
        cargoMapper.deleteCargo(cargo);
    }

    public List<Cargo> queryCargoLike1(String like)
    {
        List<Cargo> cargos = cargoMapper.queryCargoLike1(like);
        return cargos;
    }
    public List<Cargo> queryCargoLike2(String like)
    {
        List<Cargo> cargos = cargoMapper.queryCargoLike2(like);
        return cargos;
    }

}
