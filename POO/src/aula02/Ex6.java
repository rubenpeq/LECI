package aula02;

import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args){
        int hours, min, secs;
        Scanner sc = new Scanner(System.in);
        System.out.print("Seconds? ");
        int seconds=sc.nextInt();
        secs = seconds % 60;
        hours = seconds / 60;
        min = hours % 60;
        hours = hours / 60;
        if(hours<10){
            if(min<10){
                if(secs<10){
                    System.out.println("0"+hours+":0"+min+":0"+secs);
                } else{
                    System.out.println("0"+hours+":0"+min+":"+secs);
                }
            } else{
                if(secs<10){
                    System.out.println("0"+hours+":"+min+":0"+secs);
                } else{
                    System.out.println("0"+hours+":"+min+":"+secs);
                }
            }
        } else{
            if(min<10){
                if(secs<10){
                    System.out.println("0"+hours+":0"+min+":0"+secs);
                } else{
                    System.out.println("0"+hours+":0"+min+":"+secs);
                }
            } else{
                if(secs<10){
                    System.out.println("0"+hours+":"+min+":0"+secs);
                } else{
                    System.out.println("0"+hours+":"+min+":"+secs);
                }
            }
        }
        sc.close();
    }
}
