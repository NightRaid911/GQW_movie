package com.gqw.movie.service;

import com.github.pagehelper.PageInfo;
import com.gqw.movie.pojo.Movie;
import com.gqw.movie.pojo.UserMessage;


public interface UserMessageService {
    void addUserMsg(UserMessage userMessage);
    PageInfo<UserMessage> getUserMsg(Integer pageNo,Movie movie);
}
