package poo;

public class Date{
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
        return true;
    }
}
