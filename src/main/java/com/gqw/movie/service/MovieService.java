package com.gqw.movie.service;

import com.github.pagehelper.PageInfo;
import com.gqw.movie.pojo.Movie;

import java.util.List;

public interface MovieService {
    void addMovie(Movie movie);
    PageInfo<Movie> getMovieAllByNCC(Integer pageNo,Movie movie,String paixu);
    void updateMovieLoveOrDownloadById(Movie movie);
    Movie getMovieById(Movie movie);
    void deleteMovieById(Movie movie);
}
