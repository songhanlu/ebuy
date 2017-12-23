package com.bdqn.ebuy.pojo;

/**
 * Created by 大聪 on 2017/12/19.
 */
public class OrderDetail {
    /**
     * idint(10) NOT NULL主键
     orderIdint(10) NOT NULL订单主键
     productIdint(10) NOT NULL商品主键
     quantityint(10) NOT NULL数量
     costfloat NOT NULL消费
     visibleint(11) NULL
     */
    private Integer id;
    private Integer orderId;
    private Integer productId;
    private Integer quantity;
    private float cost;
    private Integer visible;
    private EasybuyProduct product;
    private User user;

    public EasybuyProduct getProduct() {
        return product;
    }

    public void setProduct(EasybuyProduct product) {
        this.product = product;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public OrderDetail() {
    }

    public OrderDetail(Integer id, Integer orderId, Integer productId, Integer quantity, float cost, Integer visible) {
        this.id = id;
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.cost = cost;
        this.visible = visible;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", orderId=" + orderId +
                ", productId=" + productId +
                ", quantity=" + quantity +
                ", cost=" + cost +
                ", visible=" + visible +
                ", product=" + product +
                ", user=" + user +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public Integer getVisible() {
        return visible;
    }

    public void setVisible(Integer visible) {
        this.visible = visible;
    }
}
