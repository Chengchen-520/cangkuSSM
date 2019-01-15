package com.cdc.pojo;

public class Person{

    private String name;

    private String password;

    private String identity;

    public Person(String name, String password, String identity) {
        this.name = name;
        this.password = password;
        this.identity = identity;
    }

    public Person() {
        super();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }
}