package aula04;

import java.util.Scanner;

public class Ex3 {
    public static String toAcronym(String s){
        String ac = "";
        String[] split = s.split("\\s");
        for (int i=0; i<split.length;i++){
            if (split[i].length()<3){
                continue;
            } else{
                ac+= (split[i].charAt(0));
            }
        }
        return ac.toUpperCase();
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("String? ");
        String s = sc.nextLine();
        System.out.println(toAcronym(s));
        sc.close();
    }
}
