package com.bmi;

public class BmiIndexer {
    private HumanBeing human;

    public void setHuman(HumanBeing human) {
        this.human = human;
    }

    public double getBmi() {
        return this.human.getBmi();
    }

    public String interpretBMI() {
        double bmi = this.getBmi();
        String interpretation = "";

        if (bmi < 16) {
            interpretation = "น้ำหนักต่ำกว่ามาตรฐานมาก หรือ ผอมมาก";
        } else if (bmi >= 16 && bmi < 18.5) {
            interpretation = "น้ำหนักน้อย หรือ ผอม";
        } else if (bmi >= 18.5 && bmi < 25) {
            interpretation = "ปกติ หรือ สุขภาพดี";
        } else if (bmi >= 25 && bmi < 30) {
            interpretation = "น้ำหนักเกิน หรือ โรคอ้วนระดับ 1";
        } else if (bmi >= 30 && bmi < 35) {
            interpretation = "อ้วน หรือ โรคอ้วนระดับ 2";
        } else if (bmi >= 35 && bmi < 40) {
            interpretation = "อ้วนมาก หรือ โรคอ้วนระดับ 3";
        } else if (bmi >= 40) {
            interpretation = "เป็นโรคอ้วน หรือ โรคอ้วนระดับสุดท้าย";
        }

        return interpretation;
    }
}
