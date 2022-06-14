package aula04;

import java.util.Scanner;

public class Ex4 {
  public static int[] readValues(){
    Scanner sc = new Scanner(System.in);
    int[] date = new int[3];
    do{
    System.out.print("Year? ");
    date[0]=sc.nextInt();
    } while (date[0]<=0);
    do{
    System.out.print("Month(1-12)? ");
    date[1]=sc.nextInt();
    } while (date[1]<=0 || date[1]>12);
    do{
    System.out.print("Day of the week(1-7, starting on Sunday)? ");
    date[2]=sc.nextInt();
    } while (date[2]<=0 || date[2]>7);
    sc.close();
    return date;
  }
  public static boolean isLeapYear(int year) {
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
    if (isLeapYear(year)==true && month==2){
        d=29;
    } else if (month==2){
        d=28;
    } else if (month%2==0){
        d=30;
    } else d=31;
    return d;
  }
  public static String monthName(int month){
    String mName;
    switch (month){
      case 1: 
          mName="January";
          break;
      case 2: 
          mName="February";
          break;
      case 3: 
          mName="March";
          break;
      case 4: 
          mName="April";
          break;
      case 5: 
          mName="May";
          break;
      case 6: 
          mName="June";
          break;
      case 7: 
          mName="July";
          break;
      case 8: 
          mName="August";
          break;
      case 9: 
          mName="September";
          break;
      case 10: 
          mName="October";
          break;
      case 11: 
          mName="November";
          break;
      case 12: 
          mName="December";
          break;
      default: 
          mName="Month";
          break;
    }
    return mName;
  }
  public static void printCalendar(int[] date){
    int nDays = monthDays(date[1], date[0]);
    System.out.format("%7s %s %d\n", " ",monthName(date[1]), date[0]);
    System.out.println("Su  Mo  Tu  We  Th  Fr  Sa");
    for(int i=1; i<date[2]; i++){
      System.out.format("%4s", "");
    }
    for(int i=1; i<=nDays; i++){
      System.out.format("%2d  ", i);
      if ((i+date[2]-1)%7==0){
        System.out.println();
      }
    }
  }
  public static void main(String[] args) {
      printCalendar(readValues());
  }
}
