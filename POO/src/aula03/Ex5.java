package aula03;

import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double mInv, taxaJ;
        do{
            System.out.print("Montante Investido? ");
            mInv=sc.nextDouble();
        }while(mInv<=0 || mInv%1000!=0);
        do{
            System.out.print("Taxa de juro mensal (%)? ");
            taxaJ=sc.nextDouble();
        } while(taxaJ<=0 || taxaJ>5);
        double mF=mInv;
        for (int i=1; i<=12;i++){
        mF*=(1+taxaJ/100);
        System.out.println(i+"º mês --> "+mF);
        }
        sc.close();
    }
}
