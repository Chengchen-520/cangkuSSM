package com.cdc.pojo;

public class C_P {
    private String userName;

    private String cargoName;

    private String operation;

    private Integer number;

    public C_P(String userName, String cargoName, String operation, Integer number) {
        this.userName = userName;
        this.cargoName = cargoName;
        this.operation = operation;
        this.number = number;
    }

    public C_P() {
        super();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getCargoName() {
        return cargoName;
    }

    public void setCargoName(String cargoName) {
        this.cargoName = cargoName == null ? null : cargoName.trim();
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation == null ? null : operation.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }
}