/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author PC
 */
public class Image {
    int id_Image;
    String linkImage;
    int id_Chapter;
    int id_comic;

    public Image(int id_Image, String linkImage, int id_Chapter) {
        this.id_Image = id_Image;
        this.linkImage = linkImage;
        this.id_Chapter = id_Chapter;
    }

    public Image(int id_Image, String linkImage, int id_Chapter, int id_comic) {
        this.id_Image = id_Image;
        this.linkImage = linkImage;
        this.id_Chapter = id_Chapter;
        this.id_comic = id_comic;
    }

    public int getId_comic() {
        return id_comic;
    }

    public void setId_comic(int id_comic) {
        this.id_comic = id_comic;
    }

    public int getId_Image() {
        return id_Image;
    }

    public void setId_Image(int id_Image) {
        this.id_Image = id_Image;
    }

    public String getLinkImage() {
        return linkImage;
    }

    public void setLinkImage(String linkImage) {
        this.linkImage = linkImage;
    }

    public int getId_Chapter() {
        return id_Chapter;
    }

    public void setId_Chapter(int id_Chapter) {
        this.id_Chapter = id_Chapter;
    }
    
}
