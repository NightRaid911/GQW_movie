package com.gqw.movie.dao;

import com.gqw.movie.pojo.Movie;
import com.gqw.movie.pojo.UserMessage;

import java.util.List;

public interface UserMessageDao {
    void addUserMsg(UserMessage userMessage);
    List<UserMessage> getUserMsg(Movie movie);
}
