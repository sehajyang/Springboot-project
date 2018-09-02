package com.spb.subject.user.domain;

import java.util.Date;

public class UserVO {
    private int uid;
    private String id;
    private String pwd;
    private String name;
    private String gender;
    private String email;
    private String address1;
    private String address2;
    private String join_date;
    private String birth_date;
    private String tel;
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPwd() {
        return pwd;
    }
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getAddress1() {
        return address1;
    }
    public void setAddress1(String address1) {
        this.address1 = address1;
    }
    public String getAddress2() {
        return address2;
    }
    public void setAddress2(String address2) {
        this.address2 = address2;
    }
    public String getJoin_date() {
        return join_date;
    }
    public void setJoin_date(String join_date) {
        this.join_date = join_date;
    }
    public String getBirth_date() {
        return birth_date;
    }
    public void setBirth_date(String birth_date) {
        this.birth_date = birth_date;
    }
    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel = tel;
    }
    @Override
    public String toString() {
        return "UserVO [uid=" + uid + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender
                + ", email=" + email + ", address1=" + address1 + ", address2=" + address2 + ", join_date=" + join_date
                + ", birth_date=" + birth_date + ", tel=" + tel + "]";
    }
     
}
