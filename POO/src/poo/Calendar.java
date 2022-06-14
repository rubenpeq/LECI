package poo;

public class Calendar {
    int year, weekDay;
    public Calendar(int year, int weekDay){
            this.year = year;
            this.weekDay = weekDay;
    }
    public static boolean validWeekday(int weekDay){
        if (weekDay<1 || weekDay>7){
            return false;
        } else{
            return true;
        }
    }
    public void set(int year, int weekDay){
        this.year = year;
        this.weekDay = weekDay;
    }
    public int year(){
        return this.year;
    }
    public String firstWeekdayOfYear(){
        return weekName(this.weekDay);
    }
    int firstWeekdayOfMonth(int month){
        int days=0;
        for (int i=1; i<month; i++){
            days+=Date.monthDays(i, this.year);
        }
        if ((this.weekDay+days)%7==0){
            return 7;
        } else{
            return (this.weekDay+days)%7;
        }
    }
    static String weekName(int weekDay){
        String wName;
        switch (weekDay){
            case 1:
                wName="Sunday";
                break;
            case 2:
                wName="Monday";
                break;
            case 3:
                wName="Tuesday";
                break;
            case 4:
                wName="Wednesday";
                break;
            case 5:
                wName="Thursday";
                break;
            case 6:
                wName="Friday";
                break;
            case 7:
                wName="Saturday";
                break;
            default:
                wName="weekDay";
                break;
        }
        return wName;
    }
    static String monthName(int month){
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
    public String printMonth(int month){
        String s="";
        int nDays = Date.monthDays(month, this.year);
        s+=String.format("%7s %s %d\n", " ",monthName(month), this.year);
        s+=String.format("Su  Mo  Tu  We  Th  Fr  Sa\n");
        for(int i=1; i<firstWeekdayOfMonth(month); i++){
          s+=String.format("%4s", "");
        }
        for(int i=1; i<=nDays; i++){
          s+=String.format("%2d  ", i);
          if ((i+firstWeekdayOfMonth(month)-1)%7==0){
            s+=String.format("\n");
          }
        }
        s+=String.format("\n");
        return s;
    }
    @Override
    public String toString(){
        String s="";
        for (int i=1; i<=12; i++){
            s+=printMonth(i);
            s+=String.format("\n");
        }
        return s;
    }
}
