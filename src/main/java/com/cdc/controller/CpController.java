package com.cdc.controller;

import com.cdc.pojo.C_P;
import com.cdc.service.C_PService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CpController {

    @Autowired
    private C_PService c_pService;

    @RequestMapping(value = "/findCpAll")
    public  String findCpAll(Model model,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo){
        Integer pageSize=5;//每页显示记录数
        //分页查询
        PageHelper.startPage(pageNo, pageSize);
        List<C_P> cpAllList=c_pService.queryAll();//获取所有操作记录
        PageInfo<C_P> pageInfo = new PageInfo<C_P>(cpAllList);
        model.addAttribute("pageInfo",pageInfo);
        return "readCpAll";
    }

    @RequestMapping(value = "/deleteCp")
    public String deleteCp(Model model,C_P cp){
        c_pService.deleteCp(cp);
        return "redirect:/findCpAll";
    }
}
