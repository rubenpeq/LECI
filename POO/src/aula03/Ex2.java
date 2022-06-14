package aula03;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        int N;
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("Number? ");
            N = sc.nextInt();
        }
        for (N--; N>=0; N--){
            System.out.println(N);
        }
    }
}