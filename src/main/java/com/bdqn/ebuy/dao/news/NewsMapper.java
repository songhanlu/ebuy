package com.bdqn.ebuy.dao.news;

import com.bdqn.ebuy.pojo.News;

import java.util.List;

/**
 * Created by 1713754029@qq.com on 2017/12/18.
 */
public interface NewsMapper {
    Integer addNews(News news);//新增

    List<News> queryNewsAllByVisible();

    Integer updateNews(News news);

    Integer updateNewsByVisible(int id);
    News queryNewsById(Integer id);
    Integer countAllNews();

 /*   Integer updateNews(News news);//修改*/

}
