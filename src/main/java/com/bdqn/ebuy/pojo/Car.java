package com.bdqn.ebuy.pojo;

/**
 * Created by hp on 2017/12/20.
 */
public class Car {
    private Integer carID;
    private Integer carProductQuatity;
    private Integer carUserID;
    private Product product;
    private Integer sum;

    public Integer getSum() {
        return sum;
    }

    public void setSum(Integer sum) {
        this.sum = sum;
    }

    @Override
    public String toString() {
        return "Car{" +
                "carID=" + carID +
                ", carProductQuatity=" + carProductQuatity +
                ", carUserID=" + carUserID +
                ", product=" + product +
                ", sum=" + sum +
                '}';
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getCarID() {
        return carID;
    }

    public void setCarID(Integer carID) {
        this.carID = carID;
    }


    public Integer getCarProductQuatity() {
        return carProductQuatity;
    }

    public void setCarProductQuatity(Integer carProductQuatity) {
        this.carProductQuatity = carProductQuatity;
    }

    public Integer getCarUserID() {
        return carUserID;
    }

    public void setCarUserID(Integer carUserID) {
        this.carUserID = carUserID;
    }
}
