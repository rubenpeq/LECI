package poo.geometry;

import java.lang.Math;

public class Circle {
    double radium;
    public Circle(double radium){
        this.radium = radium;
    }
    public static boolean valid(double radium){
        if (radium>0){
            return true;
        } else{
            return false;
        }
    }
    public void set(double radium){
        this.radium=radium;
    }
    public double getRadium(){
        return this.radium;
    }
    public boolean equals(Circle c2){
        if(c2.radium==this.radium){
            return true;
        } else{
            return false;
        }
    }
    public double area(){
        return Math.PI*Math.pow(this.radium, 2);
    }
    public double perimeter(){
        return 2*Math.PI*radium;
    }
    
    @Override
    public String toString(){
        return String.format("Type: Circle\nRadium: %.2f", this.radium);
    }
}
