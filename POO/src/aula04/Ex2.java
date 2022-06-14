package aula04;

import java.util.Scanner;

public class Ex2 {
    public static int countDigits(String s){
        int c=0;
        for (int i=0; i<s.length();i++){
            if (Character.isDigit(s.charAt(i))) c++;
        }
        return c;
    }
    public static int countSpaces(String s){
        int c=0;
        for (int i=0; i<s.length();i++){
            if (s.charAt(i)==' ') c++;
        }
        return c;
    }
    public static boolean isLower(String s){
        int c=0;
        for (int i=0; i<s.length();i++){
            if (Character.isUpperCase(s.charAt(i))) c++;
        }
        if (c==0) return true;
        else return false;
    }
    public static String rmSpaces(String s){
        s = s.trim().replaceAll(" +", " ");
        return s;
    }
    public static boolean isPalindrome(String s){
        String rs = "";
        for (int i=s.length()-1; i>=0;i--){
            rs+=s.charAt(i);
        }
        if (s.compareTo(rs)==0) return true;
        else return false;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s1 = sc.nextLine();
        System.out.println("Number of digits: " + countDigits(s1));
        System.out.println("Number of spaces: " + countSpaces(s1));
        System.out.println("Contains just lower cases? " + isLower(s1));
        System.out.println(rmSpaces(s1));
        System.out.println("String is Palindrome? " + isPalindrome(s1));
        sc.close();
    }
}
