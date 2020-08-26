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
public class Chapter {
    int id_Chapter;
    String name;
    int id_Comic;
    Timestamp day_update;
    List<Image> images;

    public Chapter(int id_Chapter, String name, int id_Comic) {
        this.id_Chapter = id_Chapter;
        this.name = name;
        this.id_Comic = id_Comic;
    }

    public Chapter(int id_Chapter, String name, int id_Comic, Timestamp day_update) {
        this.id_Chapter = id_Chapter;
        this.name = name;
        this.id_Comic = id_Comic;
        this.day_update = day_update;
    }

    public Chapter(int id_Chapter, String name, int id_Comic, Timestamp day_update, List<Image> images) {
        this.id_Chapter = id_Chapter;
        this.name = name;
        this.id_Comic = id_Comic;
        this.day_update = day_update;
        this.images = images;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public Timestamp getDay_update() {
        return day_update;
    }

    public void setDay_update(Timestamp day_update) {
        this.day_update = day_update;
    }

    public int getId_Chapter() {
        return id_Chapter;
    }

    public void setId_Chapter(int id_Chapter) {
        this.id_Chapter = id_Chapter;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId_Comic() {
        return id_Comic;
    }

    public void setId_Comic(int id_Comic) {
        this.id_Comic = id_Comic;
    }
    
}
