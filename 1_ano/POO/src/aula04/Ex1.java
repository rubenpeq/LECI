package aula04;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("String? ");
        String s1 = sc.nextLine(), s2="Hello World";
        System.out.println(s1.toLowerCase()); //convert to lower case
        System.out.println(s1.charAt(s1.length()-1)); // last character
        System.out.println(s1.substring(0, 3)); // first 3 characters
        System.out.println(s1.compareTo(s2)); // compare 2 strings
        System.out.println(s1.compareToIgnoreCase(s2)); // compara 2 strings ignoring case
        System.out.println(s1.contains("same")); // boolean --> contains a certain string/char?
        sc.close();
    }
}