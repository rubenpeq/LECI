package exercicio_aula;

import java.util.*;
import java.io.*;

public class RandomBooks {
    private Map<Person, String> m;
    private List<String> lst;

    public RandomBooks(){
        try ( Scanner input = new Scanner(new File("books.csv"))) {
            while (input.hasNextLine()){
                lst.add(input.nextLine());
            }
        }
         catch (Exception FileNotFoundExceptione) {
             System.out.println("File not found!");
            }
    }

    public void getRandomBook(Person p){
        m.put(p, lst.get((int) (Math.random()*lst.size())));
    }

    public void listReaders(){

    }
}
