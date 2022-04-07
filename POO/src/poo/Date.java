package poo;

public class Date{
    int year, month, day;
    public Date(int d, int m, int y){
      day = d;
      month=m;
      year=y;
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
    public String toString(int day, int month, int year){
      return String.format("%04d-%02d-%02d", year, month, day);
    }
  }
  