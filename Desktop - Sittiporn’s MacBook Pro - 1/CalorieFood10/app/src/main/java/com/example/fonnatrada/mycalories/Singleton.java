package com.example.fonnatrada.mycalories;

/**
 * Created by Admin on 26/10/2560.
 */

public class Singleton {
    private static Singleton instance;
    private double recommendedBMR;

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }

    public double getRecommendedBMR() {
        return recommendedBMR;
    }

    public void setRecommendedBMR(double recommendedBMR) {
        this.recommendedBMR = recommendedBMR;
    }

}
