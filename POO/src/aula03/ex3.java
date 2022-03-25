package aula03;

import java.util.Scanner;

  public class ex3 {
    public static boolean isPrime(int num){
        if (num <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }
        return true;
    }

     public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Number? ");
        int N = sc.nextInt();
        System.out.println(N + " is a prime number is a " + isPrime(N) + " statement!");
        sc.close();
    }
}