package aula02;

import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args){
        double v1, d1, v2, d2, averageSpeed;
        Scanner sc = new Scanner(System.in);
        System.out.print("Speed 1st stage? ");
        v1=sc.nextDouble();
        System.out.print("Distance 1st stage? ");
        d1=sc.nextDouble();
        System.out.print("Speed 2nd stage? ");
        v2=sc.nextDouble();
        System.out.print("Distance 2nd stage? ");
        d2=sc.nextDouble();
        averageSpeed=(d1+d2)/(d1/v1+d2/v2);
        System.out.println("The average speed was " + averageSpeed);
        sc.close();
    }
    
}
