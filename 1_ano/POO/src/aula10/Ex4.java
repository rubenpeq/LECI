package aula10;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;

public class Ex4 {
    public static void main(String[] args) throws IOException {
        List<String> moreTwoChars = new ArrayList<>();
        Scanner input = new Scanner(new FileReader("frase.txt"));
        while (input.hasNext()) {
            String word = input.next();
            if (word.length() > 2) {
                moreTwoChars.add(word);
            }
            System.out.print(word + " ");
        }
        System.out.print("\nAcabam com 's': ");
        for (String string : moreTwoChars) {
            if (string.endsWith("s")) {
                System.out.print(string + " ");
            }
        }
        System.out.print("\nStrings que contêm apenas letras: ");
        Iterator<String> it = moreTwoChars.iterator();
        while (it.hasNext()) {
            if (!it.next().matches("[a-zA-Z]+")) {
                it.remove();
            }
        }
        System.out.println(moreTwoChars);
    }
}
