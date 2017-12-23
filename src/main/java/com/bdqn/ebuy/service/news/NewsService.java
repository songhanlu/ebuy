package com.bdqn.ebuy.service.news;

import com.bdqn.ebuy.pojo.News;
import com.github.pagehelper.PageInfo;

/**
 * Created by 1713754029@qq.com on 2017/12/18.
 */
public interface NewsService {
 /*   List<News> queryNewsAllByVisible();*/
    PageInfo<News> queryNewsAllByVisible(int pageNum, int pageSize);
    Integer addNews(News news);//新增
    Integer updateNews(News news); //普通修改
    News queryNewsById(Integer id); //id查询
    Integer updateNewsByVisible(int id);//假删除
    Integer countAllNews();
}
