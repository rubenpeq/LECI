package poo;

public class Date{
    int year, month, day;
    public Date(int d, int m, int y){
      if (valid(d, m, y)){
      day = d;
      month = m;
      year = y;
      }
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
    /*public Date set(int d, int m, int y){
      ... completar
    }*/
    public static Date incrementDate(Date d){
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
    public static Date decrementDate(Date d){
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
  