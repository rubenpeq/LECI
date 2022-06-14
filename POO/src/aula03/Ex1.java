package aula03;

import java.util.Scanner;

public class Ex1{
    static boolean validValue(double nota){
        if (nota>=0 && nota <=20) return (true);
        else return(false);
    }
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double notaT=-1, notaP=-1;
        while(validValue(notaP)){
            System.out.print("Nota P? ");
            notaP = sc.nextDouble();
        }
        while(validValue(notaT)){
            System.out.print("Nota TP? ");
            notaT = sc.nextDouble();
        }
        double notaF=0.4*notaT+0.6*notaP;
        if (notaT < 7.0 || notaP < 7.0){
            System.out.format("%f reprovado por nota mìnima", notaF);
        }   else if(notaF<9.5){
            System.out.format("%f reprovado por nota mìnima", notaF);
        } else {
            System.out.format("%f, Passou", notaF);
        }
        sc.close();
    }
}