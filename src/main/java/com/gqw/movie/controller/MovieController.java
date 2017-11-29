package com.gqw.movie.controller;

import com.github.pagehelper.PageInfo;
import com.gqw.movie.pojo.Movie;
import com.gqw.movie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @RequestMapping("/add.html")
    public String add(@Validated Movie movie) {
        System.out.println(movie.toString());
        movieService.addMovie(movie);
        return "add_movie";
    }

    @RequestMapping("/index.html")
    public ModelAndView index(@RequestParam(required = false, defaultValue = "1") Integer pageNo, Movie movie) {
        System.out.println("-----------");
        String paixu = "love desc";
        PageInfo<Movie> pageMovie = movieService.getMovieAllByNCC(pageNo, movie, paixu);
        return new ModelAndView("index", "pageMovie", pageMovie);
    }

    @RequestMapping("/single.html")
    public ModelAndView single(Integer id) {
        Movie movie = new Movie();
        movie.setId(id);
        Movie m = movieService.getMovieById(movie);
        return new ModelAndView("single", "movie", m);
    }

    @RequestMapping("/movie.html")
    public ModelAndView movie(String category,String country,String movie_name,@RequestParam(required = false, defaultValue = "1") Integer pageNo, Movie movie) {
        String paixu = "id asc";
        if ("请输入片名...（可不输入）".equals(movie_name)){
            movie_name=null;
        }
        movie.setCategory(category);
        movie.setMovie_name(movie_name);
        movie.setCountry(country);
        PageInfo<Movie> pageMovie = movieService.getMovieAllByNCC(pageNo, movie, paixu);
        return new ModelAndView("movie", "pageMovie", pageMovie);
    }
}
