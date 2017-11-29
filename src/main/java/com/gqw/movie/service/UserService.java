package com.gqw.movie.service;

import com.github.pagehelper.PageInfo;
import com.gqw.movie.pojo.User;



public interface UserService {
    void doRegist(User user);
    User doLogin(String email,String password) throws  Exception;
    User getUserByUserEmail(User user);
    void updateUserAvatar(User user);
    PageInfo<User> getUserAll(Integer pageNo,User user);
    void updateUserByUserId(Integer id);
}
