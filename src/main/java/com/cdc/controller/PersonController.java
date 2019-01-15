package com.cdc.controller;

import com.cdc.pojo.Person;
import com.cdc.service.C_PService;
import com.cdc.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PersonController {

    @Autowired
    private PersonService personService;

    @Autowired
    private C_PService c_pService;


    @RequestMapping(value = "/login_check")
    public ModelAndView loginCheck(ModelAndView model, Person person, HttpServletRequest request,HttpSession session) throws  Exception{
        person=personService.queryByPerson(person);
        // 获取服务器生成的验证码
        String ServiceCode = session.getAttribute("validateCode").toString();
        // 获取用户输入的的验证码
        String ClientCode = request.getParameter("codetext");
        if (ClientCode.equalsIgnoreCase(ServiceCode)) {
            if(person==null){
                model.addObject("loginMessage", "您输入的用户名或密码错误!");
                model.setViewName("forward:/index.jsp");
            }else if(person.getIdentity().equals("老板")){
                request.getSession().setAttribute("username",person.getName());
                request.getSession().setAttribute("identity",person.getIdentity());
                model.setViewName("redirect:/findCpAll");
            }else if(person.getIdentity().equals("管理员")){
                request.getSession().setAttribute("username",person.getName());
                request.getSession().setAttribute("identity",person.getIdentity());
                model.setViewName("redirect:/gmLogin");
            }
        }else{
            model.addObject("loginMessage", "验证码错误!");
            model.setViewName("forward:/index.jsp");
        }
        return model;
    }

    @RequestMapping(value = "/updatePassword1")
    public String updatePassword1(Model model,String password,String newPassword,HttpSession session){
        Person person = new Person();
        person.setName((String) session.getAttribute("username"));
        person.setIdentity((String) session.getAttribute("identity"));
        person.setPassword(password);

        if(personService.queryByPerson(person)==null){
            return "loginFail";
        }
        person.setPassword(newPassword);
        personService.updatePassword(person);
        return "redirect:/exit";
    }

    @RequestMapping(value = "/findPersonAll")
    public String findPersonAll(Model model){
        List<Person> personList=personService.queryPersonAll();
        model.addAttribute("personListLong",personList.size());
        model.addAttribute("personList",personList);
        return "readPersonAll";
    }

    @RequestMapping(value = "/deletePerson/{personName}")
    public String deletePerson(Model model, HttpSession session, @PathVariable String personName){
        c_pService.deletePerson(personName);
        personService.deletePerson(personName);

        return "redirect:/findPersonAll";
    }

    @RequestMapping(value = "/turningPerson")
    public String turning(){//跳转到添加新管理员页面
        return  "insertPerson";
    }


    @RequestMapping(value = "/insertPerson1")
    public String insertPerson1(Model model,Person person){
        person.setIdentity("管理员");
        try {
            personService.insertPerson(person);
            return "redirect:/findPersonAll";
        } catch (Exception e) {
            model.addAttribute("registMessage",e.getMessage());
            e.printStackTrace();
            return "forward:/turningPerson";
        }
    }

    @RequestMapping(value = "/pwdReturn")
    public String pwdReturn(){
            return "updatePassword";
    }

    @RequestMapping(value = "/exit")
    public ModelAndView exit(HttpSession httpSession) {
        System.out.println("------++++++");
        httpSession.invalidate();
        ModelAndView mav = new ModelAndView("redirect:/index.jsp");
        return mav;
    }
}
