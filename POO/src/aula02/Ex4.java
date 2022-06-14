package aula02;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        double Inv, monthlyInt;
        int monthsnum;
        Scanner sc = new Scanner(System.in);
        System.out.print("Initial Investment? ");
        Inv=sc.nextDouble();
        System.out.print("Monthly Interest (%)? ");
        monthlyInt=sc.nextDouble();
        System.out.print("Number of months? ");
        monthsnum=sc.nextInt();
        double totalAmount=Inv;
        for(int i=monthsnum;i>0;i--){
            totalAmount*=1+(monthlyInt/100);
        }
        System.out.println("You will have " + totalAmount + " euros after " + monthsnum + " months.");
        sc.close();
    }
}
