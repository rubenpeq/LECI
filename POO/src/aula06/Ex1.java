package aula06;

import poo.Aluno;
import poo.Date;

public class Ex1 {
    public static void main(String[] args) {
        Date d = new Date(22, 1, 2002);
        Aluno p = new Aluno("Ruben Pequeno", 14835632, d, d, 102480);
        System.out.print(p);
    }
}
