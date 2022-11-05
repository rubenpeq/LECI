package poo.geometry;

public class Triangle {
    double side1, side2, side3;
    public Triangle(double side1, double side2, double side3){
        this.side1=side1;
        this.side2=side2;
        this.side3=side3;
    }
    public static boolean valid(double side1, double side2, double side3){
        if (side1>0 && side2>0 && side3>0){
            return true;
        } else{
            return false;
        }
    }
}
