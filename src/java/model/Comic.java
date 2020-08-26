/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author PC
 */
public class Comic {
    int id_comic;
    String name_comic;
    Timestamp day_update;
    String image;
    List<Categories> categories;
    List<Author> authors;
    String description;
    boolean static_comic;
    int views;

    public Comic(int id_comic, String name_comic, Timestamp day_update, String image, String description, boolean static_comic) {
        this.id_comic = id_comic;
        this.name_comic = name_comic;
        this.day_update = day_update;
        this.image = image;
        this.description = description;
        this.static_comic = static_comic;
    }

    public Comic(int id_comic, String name_comic, Timestamp day_update, String image, String description, boolean static_comic, int views) {
        this.id_comic = id_comic;
        this.name_comic = name_comic;
        this.day_update = day_update;
        this.image = image;
        this.description = description;
        this.static_comic = static_comic;
        this.views = views;
    }

    
    public Comic(int id_comic, String name_comic, Timestamp day_update, String image, List<Categories> categories, List<Author> authors, String description, boolean static_comic) {
        this.id_comic = id_comic;
        this.name_comic = name_comic;
        this.day_update = day_update;
        this.image = image;
        this.categories = categories;
        this.authors = authors;
        this.description = description;
        this.static_comic = static_comic;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public List<Categories> getCategories() {
        return categories;
    }

    public void setCategories(List<Categories> categories) {
        this.categories = categories;
    }

    public List<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(List<Author> authors) {
        this.authors = authors;
    }

    public Comic() {
    }

    public int getId_comic() {
        return id_comic;
    }

    public void setId_comic(int id_comic) {
        this.id_comic = id_comic;
    }

    public String getName_comic() {
        return name_comic;
    }

    public void setName_comic(String name_comic) {
        this.name_comic = name_comic;
    }

    public Timestamp getDay_update() {
        return day_update;
    }

    public void setDay_update(Timestamp day_update) {
        this.day_update = day_update;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatic_comic() {
        return static_comic;
    }

    public void setStatic_comic(boolean static_comic) {
        this.static_comic = static_comic;
    }
    
}
