package aula03;

import java.util.Scanner;
import java.lang.Math;

public class ex4 {
    public static double Max(double n[]){
        double max=0;
        for (int i = 1; i<n.length;i++){
            max=Math.max(n[i-1], n[i]);
        }
        return max;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double[] a = new double[64];
        for (int i=0; i<a.length; i++){
            a[i]=sc.nextDouble();
            if (i>0 && a[i]==a[0]){
                 break;
            }
        }
        System.out.println(Max(a));
        sc.close();
    }    
}