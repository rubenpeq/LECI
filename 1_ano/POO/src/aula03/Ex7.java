package aula03;

import java.util.Scanner;
import java.lang.Math;

public class Ex7 {
    public static void highLow(Scanner sc){
        int secretNumber = (int) (1 + Math.random() * 99), guess=0, count=0;
        System.out.println("Try to guess the secret number between 1 and 100! ");
        while (secretNumber!=guess){
            guess=sc.nextInt();
            if (secretNumber<guess){
                System.out.println("The secret number is lower than your guess. ");
                count++;
            } else if (secretNumber>guess){
                System.out.println("The secret number is higher than your guess. ");
                count++;
            } else {
                System.out.println("You guessed it right after " + count++ + " tries!");
                break;
            }
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s = "Y";
        while (s=="Y"){
            highLow(sc);
            System.out.print("Play again? (Y)es or (N)o --> ");
            s = sc.nextLine(); // ainda não consegui resolver isto. está a ler o buffer?
        }
        sc.close();
    }
}