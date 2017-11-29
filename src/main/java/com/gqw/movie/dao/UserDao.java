package com.gqw.movie.dao;

import com.gqw.movie.pojo.User;

import java.util.List;

public interface UserDao {
    void addUser(User user);
    User getUserByUserEmail(User user);
    void updateUserByUserId(Integer id);
    void updateUserAvatar(User user);
    List<User> getUserAll();
}
