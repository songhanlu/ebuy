package com.bdqn.ebuy.service.car;

import com.bdqn.ebuy.dao.car.CarMapper;
import com.bdqn.ebuy.pojo.Car;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hp on 2017/12/20.
 */
@Service
public class CarServiceImpl implements CarService {
    @Resource
    private CarMapper carMapper;
    @Override
    public Integer addCar(Car car) {
        return carMapper.addCar(car);
    }

    @Override
    public List<Car> findAll(Integer userID) {
        return carMapper.findAll(userID);
    }

    @Override
    public Integer updateCar(Car car) {
        return carMapper.updateCar(car);
    }

    @Override
    public Integer sumByUserID(Integer userID) {
        return carMapper.sumByUserID(userID);
    }

    @Override
    public Integer deleteCarByID(Integer carID) {
        return carMapper.deleteCarByID(carID);
    }
}
