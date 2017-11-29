package com.gqw.movie.dao;

import com.gqw.movie.pojo.Movie;

import java.util.List;

public interface MovieDao {
    void addMovie(Movie movie);
    List<Movie> getMovieAllByNCC(Movie movie);
    void updateMovieLoveOrDownloadById(Movie movie);
    Movie getMovieById(Movie movie);
    void deleteMovieById(Movie movie);
}
