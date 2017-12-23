package com.bdqn.ebuy.dao.car;

import com.bdqn.ebuy.pojo.Car;

import java.util.List;

/**
 * Created by hp on 2017/12/20.
 */
public interface CarMapper {
    Integer addCar(Car car);
    List<Car> findAll(Integer userID);
    Integer updateCar(Car car);
    Integer sumByUserID(Integer userID);
    Integer deleteCarByID(Integer carID);
}
