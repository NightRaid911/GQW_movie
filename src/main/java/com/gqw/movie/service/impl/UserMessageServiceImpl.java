package com.gqw.movie.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gqw.movie.dao.UserMessageDao;
import com.gqw.movie.pojo.Movie;
import com.gqw.movie.pojo.UserMessage;
import com.gqw.movie.service.UserMessageService;
import com.gqw.movie.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserMessageServiceImpl implements UserMessageService{
    @Autowired
    private UserMessageDao userMessageDao;

    public void addUserMsg(UserMessage userMessage) {
        userMessageDao.addUserMsg(userMessage);
    }

    public PageInfo<UserMessage> getUserMsg(Integer pageNo, Movie movie) {
        PageHelper.startPage(pageNo, Constants.USERMESSAGE_PAGE_SIZE,"created_date desc");
        List<UserMessage> userMessageList = userMessageDao.getUserMsg(movie);
        PageInfo<UserMessage> page=new PageInfo<UserMessage>(userMessageList,3);
        return page;
    }
}
