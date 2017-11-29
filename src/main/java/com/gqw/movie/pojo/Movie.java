package com.gqw.movie.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * FieldTypeComment
 * id             int(11) NOT NULL
 * photo          varchar(3000) NOT NULL电影封面
 * country        varchar(30) NOT NULL国家
 * category       varchar(100) NOT NULL类型
 * release_date   datetime NOT NULL上映日期
 * director       varchar(50) NOT NULL导演
 * actors         varchar(200) NOT NULL主演
 * age            int(99) NOT NULL年龄限制
 * love           bigint(20) NOT NULL人气
 * downloads      int(11) NOT NULL下载量
 * stars_rating   int(6) NOT NULL评分
 */
public class Movie {

    private Integer id;
    private String movie_name;
    private String photo;
    private String country;
    private String category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date release_date;
    private String director;
    private String actors;
    private Integer age;
    private Long love;
    private Integer downloads;
    private Integer stars_rating;
    private String movie_url;

    private Integer movie_time;
    private String movie_idt;

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", movie_name='" + movie_name + '\'' +
                ", photo='" + photo + '\'' +
                ", country='" + country + '\'' +
                ", category='" + category + '\'' +
                ", release_date=" + release_date +
                ", director='" + director + '\'' +
                ", actors='" + actors + '\'' +
                ", age=" + age +
                ", love=" + love +
                ", downloads=" + downloads +
                ", stars_rating=" + stars_rating +
                ", movie_url='" + movie_url + '\'' +
                ", movie_time=" + movie_time +
                ", movie_idt='" + movie_idt + '\'' +
                '}';
    }

    public Integer getMovie_time() {
        return movie_time;
    }

    public void setMovie_time(Integer movie_time) {
        this.movie_time = movie_time;
    }

    public String getMovie_idt() {
        return movie_idt;
    }

    public void setMovie_idt(String movie_idt) {
        this.movie_idt = movie_idt;
    }

    public String getMovie_url() {
        return movie_url;
    }

    public void setMovie_url(String movie_url) {
        this.movie_url = movie_url;
    }

    public String getMovie_name() {
        return movie_name;
    }

    public void setMovie_name(String movie_name) {
        this.movie_name = movie_name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Long getLove() {
        return love;
    }

    public void setLove(Long love) {
        this.love = love;
    }

    public Integer getDownloads() {
        return downloads;
    }

    public void setDownloads(Integer downloads) {
        this.downloads = downloads;
    }

    public Integer getStars_rating() {
        return stars_rating;
    }

    public void setStars_rating(Integer stars_rating) {
        this.stars_rating = stars_rating;
    }
}
