package poo;

import java.util.Scanner;

public class Date{
    int year, month, day;
    public Date(int day, int month, int year){
      if (valid(day, month, year)){
      this.day = day;
      this.month = month;
      this.year = year;
      } else{
        System.out.println("Invalid date. ");
      }
    }
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
    public Date incrementDate(Date d){
      if (d.day==monthDays(d.month, d.year)){
        if (d.month==12){
          d.day=1;
          d.month=1;
          d.year+=1;
        } else{
          d.day=1;
          d.month+=1;
        }
      } else{
        d.day+=1;
      }
      return d;
    }
    public Date decrementDate(Date d){
      if (d.day==1){
        if (d.month==1){
          d.year-=1;
          d.month=12;
          d.day=31;
        } else{
          d.month-=1;
          d.day=monthDays(d.month, d.year);
        }
      } else{
        d.day-=1;
      }
      return d;
    }

    @Override
    public String toString(){
      return String.format("%04d-%02d-%02d", year, month, day);
    }
  }
  