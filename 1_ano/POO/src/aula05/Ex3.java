package aula05;

import java.util.Scanner;

import poo.geometry.*;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Rectangle r;
        int op;
        double h,l;
        do{
            h = sc.nextDouble();
            l = sc.nextDouble();
            r = new Rectangle(l, h);
        } while (!Rectangle.valid(l, h));
        do{
            System.out.format("Operations:\n1 - ");
            op=sc.nextInt();

        } while(op!=0);
        System.out.println(r);
        sc.close();
    }
}
