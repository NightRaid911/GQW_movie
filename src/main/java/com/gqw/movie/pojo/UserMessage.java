package com.gqw.movie.pojo;

import java.util.Date;

/**
 * id                int(11) NOT NULL
 * user_id           int(11) NOT NULL
 * message           varchar(300) NOT NULL
 * created_date      datetime NULL
 * status_msg        int(2)   NOT NULL
 * movie_id          int(11) NOT NULL
 */
public class UserMessage {

    private Integer id;
    private User user;
    private String message;
    private Date created_date;
    private Integer status_msg;
    private Movie movie;

    @Override
    public String toString() {
        return "UserMessage{" +
                "id=" + id +
                ", user=" + user +
                ", message='" + message + '\'' +
                ", created_date=" + created_date +
                ", status_msg=" + status_msg +
                ", movie=" + movie +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public Integer getStatus_msg() {
        return status_msg;
    }

    public void setStatus_msg(Integer status_msg) {
        this.status_msg = status_msg;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
}
