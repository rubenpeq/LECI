package aula02;

import java.util.Scanner;
import java.lang.Math;

public class Ex7 {
    public static void main(String[] args){
        double p1[] = new double [2], p2[] = new double [2];
        Scanner sc = new Scanner(System.in);
        System.out.print("(x,y) of the 1st point? ");
        p1[0]=sc.nextDouble();
        p1[1]=sc.nextDouble();
        System.out.print("(x,y) of the 2nd point? ");
        p2[0]=sc.nextDouble();
        p2[1]=sc.nextDouble();
        double d=Math.sqrt(Math.pow(p2[0]-p1[0],2)+Math.pow(p2[1]-p1[1],2));
        System.out.println(d);
        sc.close();
    }
}
