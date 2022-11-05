package aula03;

import java.util.Scanner;

public class Ex8{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double[][] notas= new double[16][2];
        System.out.format("%10s %10s %10s \n", "NotaTP", "NotaP", "Pauta");
        for (int i=0; i<notas.length; i++){
            notas[i][0]=Math.random() * 20; //notas P
            notas[i][1]=Math.random() * 20; //notas TP
            System.out.format("%10.1f %10.1f %10.0f \n",notas[i][0], notas[i][1], 0.4*notas[i][1]+0.6*notas[i][0]);
        }
        sc.close();
    }
}