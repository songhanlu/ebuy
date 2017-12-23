package com.bdqn.ebuy.service.user;

import com.bdqn.ebuy.pojo.User;
import com.github.pagehelper.PageInfo;

/**
 * Created by wangheng on 2017/12/18.
 */
public interface UserService {
    //增加
    public Integer  addUser(User user);
    //假删除Sql语句用修改
    public Integer deleteUserById(Integer id);
    //修改
    public Integer updateUser(User user);
    //查询一条
    public User detailUser(Integer id);
    //分页
    public PageInfo<User> queryAll(Integer pageNum, Integer pageSize);
    //登录
    public User login(User user);
    //根据姓名进行查询,注册使用
    public User queryUserByLoginName(String loginName);
    //求总记录数
    public Integer queryCount();
    //前台登录
    User beforeLogin(String loginName, String password);

    //前台注册
    Integer beforeRegister(User user);
}
