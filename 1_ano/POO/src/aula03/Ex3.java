package aula03;

import java.util.Scanner;

  public class Ex3 {
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
        int N;
        do{
            System.out.print("Number? ");
            N = sc.nextInt();
        } while (N<=0);
        System.out.println(isPrime(N) ? "The number "+N+" is prime" : "The number "+N+" is not prime");
        sc.close();
    }
}