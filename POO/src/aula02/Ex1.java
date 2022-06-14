package aula02;

import java.util.Scanner;

public class Ex1 {
	public static void main(String[] args) {
		double km, miles;
		Scanner sc = new Scanner(System.in);
		System.out.print("Distance in km: ");
		km = sc.nextDouble();
		miles = km / 1.609;
		System.out.println(km + " km is " + miles + " miles. ");
		sc.close();
	}
}
