package com.bmi;

public class HumanBeing {
    private double height;
    private double weight;
    private double bmi;

    public void setHeight(double height) {
        this.height = height;
    }

    public double getHeight() {
        return this.height;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getWeight() {
        return this.weight;
    }

    public void calculateBmi() {
        double heightInMeters = this.getHeight() / 100;
        this.bmi = this.getWeight() / (heightInMeters * heightInMeters);
    }

    public double getBmi() {
        return this.bmi;
    }
}
