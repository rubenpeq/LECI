package aula03;

import java.util.Scanner;
import java.lang.Math;

public class Ex4 {
    public static double Max(double n[]){
        double max=n[0];
        for (int i = 1; i<n.length;i++){
            max=Math.max(max, n[i]);
        }
        return max;
    }
    public static double Min(double n[], int c){
        double min=n[0];
        for (int i = 1; i<=c;i++){
            min=Math.min(min, n[i]);
        }
        return min;
    }
    public static double Average(double n[], int c){
        double av=0;
        int i;
        for (i=0; i<=c;i++){
            av+=n[i];
        }
        return (av/i);
    }
    public static void main(String[] args) {
        double[] a = new double[64];
        int i;
        Scanner sc = null;
        try{
            sc = new Scanner(System.in);
            for (i=0; i<a.length; i++){
                a[i]=sc.nextDouble();
                if (i>0 && a[i]==a[0]){
                    break;
                }
            }
        }finally{
            if (sc != null)
                sc.close();
        }
        System.out.format("Numeros lidos: %d \n Max: %.2f \n Min: %.2f \n Media: %.2f \n", i+1, Max(a), Min(a,i), Average(a, i));
    }    
}