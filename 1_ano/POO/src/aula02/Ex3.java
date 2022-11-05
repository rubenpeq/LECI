package aula02;

import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
		double M,fT,iT,Q;
		Scanner sc = new Scanner(System.in);
        System.out.print("Amount of water (Kg)? ");
		M = sc.nextDouble();
        System.out.print("What's the intial and final temperature? ");
        iT = sc.nextDouble();
        fT = sc.nextDouble();
        if (iT>fT){
            double t=iT;
            iT=fT;
            fT=t;
        }
        Q=M*(fT-iT)*4184;
		System.out.println("The energy needed to heat the water from " + iT + " C to " + fT + " C is " + Q + " J");
		sc.close();
	}
}
