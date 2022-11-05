package aula10;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Ex3 {
    public static void main(String[] args) {
        System.out.println(mostradeiro("Hello World"));
    }

    public static String mostradeiro(String str) {
        Map<Character, ArrayList<Integer>> map = new HashMap<>();
        for (int i = 0; i < str.length(); i++) {
            if (map.putIfAbsent(str.charAt(i), new ArrayList<>(Arrays.asList(i))) != null) {
                map.get(str.charAt(i)).add(i);
            }
        }
        return map.toString();
    }
}
