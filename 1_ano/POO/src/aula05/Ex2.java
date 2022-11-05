package aula05;

import java.util.Scanner;
import poo.*;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int op, year, weekDay, month;
        do{
            System.out.print("Year: ");
            year=sc.nextInt();
            System.out.print("Weekday(1-7 starting on Sunday): ");
            weekDay=sc.nextInt();
        } while (year<0 || !Calendar.validWeekday(weekDay));
        Calendar c1 = new Calendar(year, weekDay);
        do{
            System.out.format("Calendar operations:\n1 - create new calendar\n2 - print calendar month\n3 - print calendar\n0 - exit\n");
            op = sc.nextInt();
            if (op==1){
                do{
                    System.out.print("Year: ");
                    year=sc.nextInt();
                    System.out.print("Weekday(1-7 starting on Sunday): ");
                    weekDay=sc.nextInt();
                } while (year<0 || !Calendar.validWeekday(weekDay));
                c1.set(year, weekDay);;
            } else if (op==2){
                do{
                    System.out.print("Month: ");
                    month=sc.nextInt();
                } while(!Date.validMonth(month));
                System.out.println(c1.printMonth(month));
            } else if (op==3){
                System.out.print(c1);
            }
        } while (op!=0);
        System.out.println(c1);
        sc.close();
    }
}
