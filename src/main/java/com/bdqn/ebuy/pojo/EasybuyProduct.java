package com.bdqn.ebuy.pojo;

/**
 *   `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
 `name` varchar(20) NOT NULL COMMENT '名称',
 `description` varchar(1024) DEFAULT NULL COMMENT '描述',
 `price` float NOT NULL COMMENT '价格',
 `stock` int(10) NOT NULL COMMENT '库存',
 `categoryLevel1Id` int(10) DEFAULT NULL COMMENT '分类1',
 `categoryLevel2Id` int(10) DEFAULT NULL COMMENT '分类2',
 `categoryLevel3Id` int(10) DEFAULT NULL COMMENT '分类3',
 `fileName` varchar(200) DEFAULT NULL COMMENT '文件名称',
 `visible` int(1) DEFAULT '1' COMMENT '是否删除(0：删除 1：未删除)',
 */
public class EasybuyProduct {
    //主键 库存 一级分累·二级分类·三级分类 是否删除
    private Integer id,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,visible;
    //名称 描述 文件名称
    private String name,description,fileName;
    //单价
    private float price;

    @Override
    public String toString() {
        return "EasybuyProduct{" +
                "id=" + id +
                ", stock=" + stock +
                ", categoryLevel1Id=" + categoryLevel1Id +
                ", categoryLevel2Id=" + categoryLevel2Id +
                ", categoryLevel3Id=" + categoryLevel3Id +
                ", visible=" + visible +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", fileName='" + fileName + '\'' +
                ", price=" + price +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getCategoryLevel1Id() {
        return categoryLevel1Id;
    }

    public void setCategoryLevel1Id(Integer categoryLevel1Id) {
        this.categoryLevel1Id = categoryLevel1Id;
    }

    public Integer getCategoryLevel2Id() {
        return categoryLevel2Id;
    }

    public void setCategoryLevel2Id(Integer categoryLevel2Id) {
        this.categoryLevel2Id = categoryLevel2Id;
    }

    public Integer getCategoryLevel3Id() {
        return categoryLevel3Id;
    }

    public void setCategoryLevel3Id(Integer categoryLevel3Id) {
        this.categoryLevel3Id = categoryLevel3Id;
    }

    public Integer getVisible() {
        return visible;
    }

    public void setVisible(Integer visible) {
        this.visible = visible;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
