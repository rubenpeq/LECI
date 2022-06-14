package aula03;

import java.util.Scanner;

public class Ex6 {
    public static boolean isLeapYear(int year) {
        if (year % 4 != 0) {
          return false;
        } else if (year % 400 == 0) {
          return true;
        } else if (year % 100 == 0) {
          return false;
        } else {
          return true;
        }
      }
    public static int monthDays(int month, int year){
        int d;   
        if (isLeapYear(year)==true && month==2){
            d=29;
        } else if (month==2){
            d=28;
        } else if (month%2==0){
            d=30;
        } else d=31;
        return d;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int y, m;
        System.out.print("Year? ");
        y=sc.nextInt();
        do{
            System.out.print("Month? ");
            m=sc.nextInt();
        } while (m<1 || m>12);
        System.out.println("The month has " + monthDays(m, y) + " days.");
        sc.close();
    }
}
