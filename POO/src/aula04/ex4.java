package aula04;

import java.util.Scanner;

public class ex4 {
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
    public static int readValues(Scanner sc){
        return 0;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        sc.close();
    }
}
