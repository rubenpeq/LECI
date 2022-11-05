package poo.geometry;

public class Rectangle {
    double height, length;
    public Rectangle(double length, double height){
            this.height=height;
            this.length=length;
    }
    public static boolean valid(double length, double height){
        if (height>0 && length>0){
            return true;
        } else{
            return false;
        }
    }
    public void setHeight(double height){
            this.height=height;
    }
    public void setLength(double length){
            this.length=length;
    }
    public void set(double length, double height){
        this.length=length;
        this.height=height;
    }
    public double getLength(){
        return this.length;
    }
    public double getHeight(){
        return this.height;
    }
    public boolean equals(Rectangle r2){
        if(r2.length==this.length && r2.height==this.height){
            return true;
        } else{
            return false;
        }
    }
    public double area(){
        return this.length*this.height;
    }
    public double perimeter(){
        return 2*this.length+2*this.height;
    }

    @Override
    public String toString(){
        return String.format("Type: Rectangle\nLength: %.2f\nHeight: %.2f", this.length, this.height);
    }
}