package com.gqw.movie.controller;

import com.github.pagehelper.PageInfo;
import com.gqw.movie.pojo.Movie;
import com.gqw.movie.pojo.User;
import com.gqw.movie.pojo.UserMessage;
import com.gqw.movie.service.MovieService;
import com.gqw.movie.service.UserMessageService;
import com.gqw.movie.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private MovieService movieService;
    @Autowired
    private UserService userService;
    @Autowired
    private UserMessageService userMessageService;

    @RequestMapping("/admin.html")
    public String index() {
        return "/admin";
    }

    @RequestMapping("/movie_list.html")
    public ModelAndView list(@RequestParam(required = false, defaultValue = "1") Integer pageNo, Movie movie) {
        String paixu = "id asc";
        PageInfo<Movie> moviePage = movieService.getMovieAllByNCC(pageNo, movie, paixu);
        return new ModelAndView("/admin/movie_list", "moviePage", moviePage);
    }
    @RequestMapping("/delete_movie.html")
    public String delete_movie(@RequestParam(required = false, defaultValue = "1") Integer pageNo, Integer movie_id){
        Movie movie=new Movie();
        movie.setId(movie_id);
        movieService.deleteMovieById(movie);
        return "redirect:/admin/movie_list.html?pageNo="+pageNo;
    }

    @RequestMapping("/msg_list.html")
    public String msg_list(@RequestParam(required = false, defaultValue = "1") Integer pageNo, Movie movie, Model model){
        PageInfo<UserMessage> userMessagePage = userMessageService.getUserMsg(pageNo,movie);
        model.addAttribute("gqw",2);
        model.addAttribute("userMessage",userMessagePage);
        return "/admin/msg_list";
    }
    @RequestMapping("/user_list.html")
    public String user_list(@RequestParam(required = false, defaultValue = "1") Integer pageNo, User user,Model model){
        PageInfo<User> userPage=userService.getUserAll(pageNo,user);
        model.addAttribute("gqw",3);
        model.addAttribute("userPage",userPage);
        return "/admin/user_list";
    }

}
