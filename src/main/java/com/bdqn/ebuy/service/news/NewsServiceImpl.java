package com.bdqn.ebuy.service.news;

import com.bdqn.ebuy.dao.news.NewsMapper;
import com.bdqn.ebuy.pojo.News;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 1713754029@qq.com on 2017/12/18.
 */
@Service
public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsMapper newsMapper;

    public PageInfo<News> queryNewsAllByVisible(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<News> list=newsMapper.queryNewsAllByVisible();
        PageInfo<News> pageInfo = new PageInfo<News>(list);
        return pageInfo;
    }

    public Integer addNews(News news) {
        return newsMapper.addNews(news);
    }

    public Integer updateNews(News news) {
        return newsMapper.updateNews(news);
    }

    public News queryNewsById(Integer id) {
        return newsMapper.queryNewsById(id);
    }

    public Integer updateNewsByVisible(int id) {
        return newsMapper.updateNewsByVisible(id);
    }

    @Override
    public Integer countAllNews() {
        return newsMapper.countAllNews();
    }
}
