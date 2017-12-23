package com.bdqn.ebuy.pojo;

import java.util.Date;

/**
 * Created by 1713754029@qq.com on 2017/12/18.
 */
public class News {
    /**
     *
     FieldTypeComment
     idint(10) NOT NULL主键
     titlevarchar(40) NOT NULL标题
     contentvarchar(1000) NOT NULL内容
     createTimevarchar(10) NOT NULL创建时间
     visibleint(1) NULL
     */
    private int id,visible;//主键和状态
    private String title,content;//标题，内容，创建时间
    private Date createTime;
    public News() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVisible() {
        return visible;
    }

    public void setVisible(int visible) {
        this.visible = visible;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", visible=" + visible +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
