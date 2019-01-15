package com.cdc.service.Impl;

import com.cdc.mapper.C_PMapper;
import com.cdc.pojo.C_P;
import com.cdc.service.C_PService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class C_PServcieImpl implements C_PService {

    @Autowired
    private C_PMapper c_pMapper;

    public List<C_P> queryByName(String user_name) {
        return c_pMapper.queryByName(user_name);
    }

    public List<C_P> queryAll() {
        return c_pMapper.queryAll();
    }

    public void deletePerson(String name) {
        c_pMapper.deletePerson(name);
    }

    public void deleteCp(C_P cp) {
        c_pMapper.deleteCp(cp);
    }

    public void insertCp(C_P cp) {
        c_pMapper.insertCp(cp);
    }
}
