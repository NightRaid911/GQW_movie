package com.gqw.movie.controller;

import com.github.pagehelper.PageInfo;
import com.gqw.movie.dao.UserDao;
import com.gqw.movie.pojo.Movie;
import com.gqw.movie.pojo.User;
import com.gqw.movie.pojo.UserMessage;
import com.gqw.movie.service.MovieService;
import com.gqw.movie.service.UserMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/message")
public class UserMessageController {
    @Autowired
    private UserMessageService userMessageService;
    @Autowired
    private MovieService movieService;

    @RequestMapping("/add_list.html")
    public String getMsg(Integer movie_id, Integer user_id, String user_name, String email, String message, Model model) {
             User user = new User();
        if (user_id!=null) {
            user.setId(user_id);
        }
        Movie movie = new Movie();
        movie.setId(movie_id);
        if (message != null) {
            UserMessage userMessage = new UserMessage();
            userMessage.setUser(user);
            userMessage.setMessage(message);
            userMessage.setMovie(movie);
            userMessageService.addUserMsg(userMessage);
        }
        PageInfo<UserMessage> msgpage = userMessageService.getUserMsg(1, movie);
        Movie movie1 = new Movie();
        movie1.setId(movie_id);
        Movie m = movieService.getMovieById(movie1);
        model.addAttribute("movie",m);
        model.addAttribute("msgpage", msgpage);
        return "single";
    }
}
