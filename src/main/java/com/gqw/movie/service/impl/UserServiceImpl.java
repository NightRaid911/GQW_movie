package com.gqw.movie.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gqw.movie.dao.UserDao;
import com.gqw.movie.pojo.User;
import com.gqw.movie.service.UserService;
import com.gqw.movie.util.Constants;
import com.gqw.movie.util.Funcs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public void doRegist(User user) {
        String password = user.getPassword() + Constants.PASSWORD_KEY;
        user.setPassword(Funcs.MD5(password));
        if(user.getAvatar()==null){user.setAvatar("/images/p1.png");}
        userDao.addUser(user);
    }

    public User doLogin(String email, String password) throws Exception {
        User user1=new User();
        user1.setEmail(email);
        User user = userDao.getUserByUserEmail(user1);
        if (user != null && Funcs.MD5(password + Constants.PASSWORD_KEY).equals(user.getPassword())) {
            if (user.getStatus() == 1) {
                return user;
            } else {
                throw new Exception("该用户未激活，请激活后登录!");
            }
        }
        throw new Exception("用户名或密码错误！");
    }

    public User getUserByUserEmail(User user) {
        return userDao.getUserByUserEmail(user);
    }

    public void updateUserAvatar(User user) {
        userDao.updateUserAvatar(user);
    }

    public PageInfo<User> getUserAll(Integer pageNo, User user) {
        PageHelper.startPage(pageNo,Constants.USERMESSAGE_PAGE_SIZE,"id asc");
        List<User> userList=userDao.getUserAll();
        PageInfo<User> userPage=new PageInfo<User>(userList,3);
        return userPage;
    }

    public void updateUserByUserId(Integer id) {
        userDao.updateUserByUserId(id);
    }
}
