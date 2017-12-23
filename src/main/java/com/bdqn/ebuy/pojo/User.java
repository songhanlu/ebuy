package com.bdqn.ebuy.pojo;

/**
 * Created by wangheng on 2017/12/18.
 */
public class User {
    private Integer id;   //用户id
    private String loginName;   //用户登录名
    private String userName;   //用户名
    private String password;    //密码
    private String sex;         //性别
    private String identityCode;  //身份证编号
    private String email;     //邮箱
    private String mobile;   //联系方式
    private Integer type;     //类型
    private Integer visible;   //用于假删除使用


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", loginName='" + loginName + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", identityCode='" + identityCode + '\'' +
                ", email='" + email + '\'' +
                ", mobile='" + mobile + '\'' +
                ", type=" + type +
                ", visible=" + visible +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdentityCode() {
        return identityCode;
    }

    public void setIdentityCode(String identityCode) {
        this.identityCode = identityCode;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getVisible() {
        return visible;
    }

    public void setVisible(Integer visible) {
        this.visible = visible;
    }

    public User(Integer id, String loginName, String userName, String password, String sex, String identityCode, String email, String mobile, Integer type, Integer visible) {

        this.id = id;
        this.loginName = loginName;
        this.userName = userName;
        this.password = password;
        this.sex = sex;
        this.identityCode = identityCode;
        this.email = email;
        this.mobile = mobile;
        this.type = type;
        this.visible = visible;
    }

    public User() {
    }

    public User(Integer id, Integer visible) {

        this.id = id;
        this.visible = visible;
    }

    public User(Integer id) {

        this.id = id;
    }
}
