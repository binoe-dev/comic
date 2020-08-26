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
public class History {
    int id_history;
    int id_member;
    int id_comic;
    Timestamp day_read;

    public History(int id_history, int id_member, int id_comic, Timestamp day_read) {
        this.id_history = id_history;
        this.id_member = id_member;
        this.id_comic = id_comic;
        this.day_read = day_read;
    }

    public int getId_history() {
        return id_history;
    }

    public void setId_history(int id_history) {
        this.id_history = id_history;
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

    public Timestamp getDay_read() {
        return day_read;
    }

    public void setDay_read(Timestamp day_read) {
        this.day_read = day_read;
    }
    
    
}
