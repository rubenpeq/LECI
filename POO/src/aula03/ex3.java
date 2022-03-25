package aula03;

import java.util.Scanner;

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

  public class ex3 {
    Scanner sc = new Scanner(System.in);
    int N = sc.nextInt();
    System.out.println(N + " is a prime number is a " + isPrime(N) + " statement!");
    sc.close();
}