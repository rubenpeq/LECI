package aula07;

import java.util.Scanner;

abstract class Date{
  int year, month, day;
  public abstract int getDay();
  public abstract int getMonth();
  public abstract int getYear();
  public abstract void setDay(int day);
  public abstract void setMonth(int month);
  public abstract void setYear(int year);
  public abstract void setDate(int day, int month, int year);
  public static int[] readValues(Scanner sc){
    int d[]= new int[3];
    do{
        System.out.print("day: ");
        d[0]=sc.nextInt();
        System.out.print("month: ");
        d[1]=sc.nextInt();
        System.out.print("year: ");
        d[2]=sc.nextInt();
        if (!(valid(d[0], d[1], d[2]))){
          System.out.println("Invalid date.");
        }
    }while(!(valid(d[0], d[1], d[2])));
    return d;
  }
  public static boolean validMonth(int month){
      if (month<0 || month>12){
          return false;
      } else {
          return true;
      }
  }
  public static boolean leapYear(int year) {
      if (year % 4 != 0) {
        return false;
      } else if (year % 400 == 0) {
        return true;
      } else if (year % 100 == 0) {
        return false;
      } else {
        return true;
      }
  }
  public static int monthDays(int month, int year){
    int d;   
    if (leapYear(year)==true && month==2){
        d=29;
    } else if (month==2){
        d=28;
    } else if (month%2==0){
        d=30;
    } else d=31;
    return d;
  }
  public static boolean valid(int day, int month, int year){
    if (day>0 && day<=monthDays(month, year) && validMonth(month) && year>=0){
      return true;
    } else{
      return false;
    }
  }
}

class DateYMD extends Date{
    public DateYMD(int day, int month, int year){
      if (valid(day, month, year)){
      this.day = day;
      this.month = month;
      this.year = year;
      } else{
        System.out.println("Invalid date. ");
      }
    }
    public int getDay(){
      return this.day;
    }
    public int getMonth(){
      return this.month;
    }
    public int getYear(){
      return this.year;
    }
    public void setDay(int day){
      if (valid(day, this.month, this.year)){
        this.day=day;
      } else{
        System.out.println("Invalid day. ");
      }
    }
    public void setMonth(int month){
      if (valid(this.day, month, this.year)){
        this.month=month;
      } else{
        System.out.println("Invalid month. ");
      }
    }
    public void setYear(int year){
      if (valid(this.day, this.month, year)){
        this.year=year;
      } else{
        System.out.println("Invalid year. ");
      }
    }
    public void setDate(int day, int month, int year){
      if (valid(day, month, year)){
        this.day=day;
        this.month=month;
        this.year=year;
      } else{
        System.out.println("Invalid date. ");
      }
    }
    public void incrementDate(){
      if (this.day==monthDays(this.month, this.year)){
        if (this.month==12){
          this.day=1;
          this.month=1;
          this.year+=1;
        } else{
          this.day=1;
          this.month+=1;
        }
      } else{
        this.day+=1;
      }
    }
    public void decrementDate(){
      if (this.day==1){
        if (this.month==1){
          this.year-=1;
          this.month=12;
          this.day=31;
        } else{
          this.month-=1;
          this.day=monthDays(this.month, this.year);
        }
      } else{
        this.day-=1;
      }
    }

    @Override
    public String toString(){
      return String.format("%04d-%02d-%02d", year, month, day);
    }
}
  
/*class DateND extends Date{

}*/

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int op;
        int d[]= Date.readValues(sc);
        DateYMD d1 = new DateYMD(d[0], d[1], d[2]);
        String s1 = String.format("Date operations:\n1 - create new date\n2 - show current date\n3 - increment date\n4 - decrement date\n0 - exit\n");
        do{
            System.out.format(s1);
            op = sc.nextInt();
            if (op==1){
                d= DateYMD.readValues(sc);
                d1.setDate(d[0], d[1], d[2]);
            } else if (op==2){
                System.out.println(d1);
            } else if (op==3){
                d1.incrementDate();
            } else if (op==4){
                d1.decrementDate();
            }
        } while (op !=0);
        sc.close();
    }
}
