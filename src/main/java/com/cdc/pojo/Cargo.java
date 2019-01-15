package com.cdc.pojo;

public class Cargo {
    private String name;

    private Integer num;

    private String type;

    public Cargo(String name, Integer num, String type) {

        this.name = name;
        this.num = num;
        this.type = type;
    }

    @Override
    public int hashCode() {
        String result = name+type;
        return result.hashCode();
    }
    @Override
    public boolean equals(Object obj) {
        Cargo u = (Cargo)obj;
        return this.getName().equals(u.getName()) && (this.getType().equals(u.getType()));
    }

    public Cargo() {
        super();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}