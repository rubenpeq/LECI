package aula05;

import java.util.Scanner;
import poo.Date;

public class ex1{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int op;
        Date d1 = new Date(22, 1, 2002);
        String s1 = String.format("Date operations:\n1 - create new date\n2 - show current date\n3 - increment date\n4 - decrement date\n5 - Show operation menu\n0 - exit\n");
        System.out.format(s1);
        do{
            op = sc.nextInt();
            if (op==1){
                //Date.set()
            } else if (op==2){
                System.out.println(d1);
            } else if (op==3){
                Date.incrementDate(d1);
            } else if (op==4){
                Date.decrementDate(d1);
            } else if (op==5){
                System.out.println(s1);
            }
        } while (op !=0);
        sc.close();
    }
}