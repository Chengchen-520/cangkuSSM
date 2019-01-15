package com.cdc.controller;

import com.cdc.pojo.C_P;
import com.cdc.pojo.Cargo;
import com.cdc.service.C_PService;
import com.cdc.service.CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class CargoController {

    @Autowired
    private CargoService cargoService;

    @Autowired
    private C_PService c_pService;

    @RequestMapping(value = "/gmLogin")
    public String readCargo(Model model){//管理员登录 获得所有货物信息

        List<Cargo> cargoList = cargoService.queryAll();
        model.addAttribute("cargoList",cargoList);
        model.addAttribute("cargoListSize",cargoList.size());
        return "readCargoAll";
    }

    @RequestMapping(value = "/deleteCargo/{cargoName}")
    public String deleteCargo(Model model, @PathVariable String cargoName,HttpSession session){//删除货物
        C_P cp = new C_P();
        cp.setUserName((String) session.getAttribute("username"));
        cp.setCargoName(cargoName);
        cp.setOperation("删除");

        Cargo cargo =new Cargo();
        cargo.setName(cargoName);

        c_pService.insertCp(cp);
        cargoService.deleteCargo(cargo);

        return "redirect:/gmLogin";
    }

    @RequestMapping(value = "/turing/{name}")
    public String turing(Model model,@PathVariable String name){
        model.addAttribute("name",name);
        return  "upDateCargo";
    }

    @RequestMapping(value = "/upDateCargo1")
    public String upDateCargo1(Model model,HttpSession session,String type,Integer num){
        Cargo cargo = new Cargo();
        cargo.setName((String) session.getAttribute("cargoname"));
        cargo.setNum(num);
        cargo.setType(type);

        C_P cp = new C_P();
        cp.setUserName((String) session.getAttribute("username"));
        cp.setOperation("数量修改为");
        cp.setCargoName(cargo.getName());
        cp.setNumber(num);

        c_pService.insertCp(cp);
        cargoService.updateCargo(cargo);

        return "redirect:/gmLogin";
    }

    @RequestMapping(value = "/turning2")
    public String turing2(Model model){
        return  "insertCargo";
    }

    @RequestMapping(value = "/findByName")
    public String findByName(Model model,HttpSession session){//
        List<C_P> cpList = c_pService.queryByName((String) session.getAttribute("username"));
        model.addAttribute("cpList",cpList);
        return  "readCpByName";
    }

    @RequestMapping(value = "/turning4")
    public String turing4(Model model){
        return  "updatePassword";
    }

    @RequestMapping(value = "/insertCargo1")
    public String insertCargo1(Model model,Cargo cargo,HttpSession session){
        C_P cp = new C_P();
        cp.setUserName((String) session.getAttribute("username"));
        cp.setOperation("新增加商品");
        cp.setCargoName(cargo.getName());
        cp.setNumber(cargo.getNum());

        try {
            cargoService.insertCargo(cargo);
            c_pService.insertCp(cp);
            return "redirect:/gmLogin";
        } catch (Exception e) {
            model.addAttribute("addMessage",e.getMessage());
            e.printStackTrace();
            return "forward:/turning2";
        }
    }
    @RequestMapping("/search")
    public String search(Model model ,String like){

        if(like == "")
        {
            return "redirect:/gmLogin";
        }
        else
        {
            List<Cargo> cargoList1 = cargoService.queryCargoLike1(like);
            List<Cargo> cargoList2 = cargoService.queryCargoLike2(like);
            Set<Cargo> set = new HashSet<Cargo>();
            set.addAll(cargoList1);
            set.addAll(cargoList2);
            List<Cargo> cargoList = new ArrayList<Cargo>(set);
            model.addAttribute("cargoList",cargoList);
            model.addAttribute("cargoListSize",cargoList.size());
            return "readCargoAll";
        }
    }

}
