package aula05;

import java.util.Scanner;
import poo.Date;

public class Ex1{

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int op;
        int d[]= Date.readValues(sc);
        Date d1 = new Date(d[0], d[1], d[2]);
        String s1 = String.format("Date operations:\n1 - create new date\n2 - show current date\n3 - increment date\n4 - decrement date\n0 - exit\n");
        do{
            System.out.format(s1);
            op = sc.nextInt();
            if (op==1){
                d= Date.readValues(sc);
                d1.setDate(d[0], d[1], d[2]);
            } else if (op==2){
                System.out.println(d1);
            } else if (op==3){
                d1.incrementDate(d1);
            } else if (op==4){
                d1.decrementDate(d1);
            }
        } while (op !=0);
        sc.close();
    }
}