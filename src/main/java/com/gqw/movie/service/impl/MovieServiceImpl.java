package com.gqw.movie.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gqw.movie.dao.MovieDao;
import com.gqw.movie.pojo.Movie;
import com.gqw.movie.service.MovieService;
import com.gqw.movie.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService{
    @Autowired
    private MovieDao movieDao;

    public void addMovie(Movie movie) {
        movieDao.addMovie(movie);
    }

    public PageInfo<Movie> getMovieAllByNCC(Integer pageNo, Movie movie,String paixu) {
        PageHelper.startPage(pageNo, Constants.NEWS_PAGE_SIZE,paixu);
        List<Movie> movies=movieDao.getMovieAllByNCC(movie);
        PageInfo<Movie> page=new PageInfo<Movie>(movies,3);
        return page;
    }

    public void updateMovieLoveOrDownloadById(Movie movie) {
        movieDao.updateMovieLoveOrDownloadById(movie);
    }

    public Movie getMovieById(Movie movie) {
        return movieDao.getMovieById(movie);
    }

    public void deleteMovieById(Movie movie) {
        movieDao.deleteMovieById(movie);
    }

}
