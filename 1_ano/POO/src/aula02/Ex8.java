package aula02;

import java.util.Scanner;
import java.lang.Math;

public class Ex8 {
    public static void main(String[] args){
        double A,B,C,O;
        Scanner sc = new Scanner(System.in);
        System.out.print("Value of sides A & B? ");
        A=sc.nextDouble();
        B=sc.nextDouble();
        C=Math.sqrt(Math.pow(A, 2)+Math.pow(B, 2));
        O=Math.toDegrees(Math.asin(A/C));
        System.out.println("The hypotenuse value is " + C + " and the angle with side A is " + O + " degrees.");
        sc.close();
    }   
}