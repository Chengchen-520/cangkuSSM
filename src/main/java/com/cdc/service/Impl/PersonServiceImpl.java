package com.cdc.service.Impl;

import com.cdc.mapper.PersonMapper;
import com.cdc.pojo.Person;
import com.cdc.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonMapper personMapper;

    public void insertPerson(Person p) {
        Person staff = personMapper.queryPerson(p.getName());
        if(staff==null)
        {
            personMapper.insertPerson(p);
        }else{
            throw new RuntimeException("账号已存在!");
        }
    }

    public Person queryByPerson(Person p) {
        return personMapper.queryByPerson(p);
    }

    public List<Person> queryPersonAll() {
        return personMapper.queryPersonAll();
    }

    public void deletePerson(String name) {
        personMapper.deletePerson(name);
    }

    public void updatePassword(Person person) {
        personMapper.updatePassword(person);
    }
}
