/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author PC
 */
public class Follow {
    int id_follow;
    int id_member;
    int id_comic;
    Timestamp day_follow;

    public Follow(int id_follow, int id_member, int id_comic, Timestamp day_follow) {
        this.id_follow = id_follow;
        this.id_member = id_member;
        this.id_comic = id_comic;
        this.day_follow = day_follow;
    }

    public Follow(int id_follow, int id_comic, Timestamp day_follow) {
        this.id_follow = id_follow;
        this.id_comic = id_comic;
        this.day_follow = day_follow;
    }

    public int getId_follow() {
        return id_follow;
    }

    public void setId_follow(int id_follow) {
        this.id_follow = id_follow;
    }

    public int getId_member() {
        return id_member;
    }

    public void setId_member(int id_member) {
        this.id_member = id_member;
    }

    public int getId_comic() {
        return id_comic;
    }

    public void setId_comic(int id_comic) {
        this.id_comic = id_comic;
    }

    public Timestamp getDay_follow() {
        return day_follow;
    }

    public void setDay_follow(Timestamp day_follow) {
        this.day_follow = day_follow;
    }
    
}
