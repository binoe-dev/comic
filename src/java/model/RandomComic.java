/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;


/**
 *
 * @author PC
 */
public class RandomComic {
    public static List<Comic> random(List<Comic> comics){
//        int size = 20;

            List<Comic> random = new ArrayList<>();
           Random rand = new Random();
           while(comics.size() > 0) {
               int index = rand.nextInt(comics.size());
               random.add(comics.remove(index));
           }
           return random;
    }
}
