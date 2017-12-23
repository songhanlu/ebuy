package com.bdqn.ebuy.dao.user;

import com.bdqn.ebuy.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by wangheng on 2017/12/18.
 */
public interface UserMapper {
    //增加
    public Integer  addUser(User user);
    //假删除Sql语句用修改
    public Integer deleteUserById(Integer id);
    //修改
    public Integer updateUser(User user);
    //查询一条
    public User detailUser(Integer id);
    //查询多条加分页
    public List<User> queryAll();
    //登录
    public User login(User user);
    //根据姓名进行查询,注册使用
    public User queryUserByLoginName(String loginName);
    //求总记录数
    public Integer queryCount();

    //前台登录
    User beforeLogin(@Param("loginName") String loginName, @Param("password") String password);

    //前台登录
    Integer beforeRegister(User user);



}
