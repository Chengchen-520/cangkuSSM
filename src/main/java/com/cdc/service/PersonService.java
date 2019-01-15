package com.cdc.service;

import com.cdc.pojo.Person;

import java.util.List;

public interface PersonService {
    public void insertPerson(Person p);
    //账号、密码、身份查询
    public Person queryByPerson(Person p);
    public List<Person> queryPersonAll();
    public void deletePerson(String name);
    public void updatePassword(Person person);
}
