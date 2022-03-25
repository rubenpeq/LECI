package aula03;

import java.util.Scanner;

public class ex2 {
    public static void main(String[] args){
        int N;
        Scanner sc = new Scanner(System.in);
        N = sc.nextInt();
        for (N--; N>=0; N--){
            System.out.println(N);
        }
        sc.close();
    }
}