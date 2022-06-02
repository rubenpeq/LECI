package aula10;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Ex2 {
    public static void main(String[] args) {
        Map<String, List<String>> data = new TreeMap<>();
        add(data, "branco", "cor da neve");
        add(data, "branco", "descorado");
        add(data, "branco", "palido");
        add(data, "branco", "leite");
        add(data, "vermelho", "cor de sangue venoso");
        add(data, "vermelho", "cor de sangue arterial");
        add(data, "verde", "cor da relva");
        add(data, "azul", "cor do ceu");
        add(data, "cinzento", "passeio");

        System.out.println(data);
        System.out.println(data.keySet());
        System.out.println(data.values());
        System.out.println(randomValue(data, "branco"));
    }

    public static void add(Map<String, List<String>> m, String k, String v) {
        if (m.putIfAbsent(k, new ArrayList<>(Arrays.asList(v))) != null) {
            m.get(k).add(v);
        }
    }

    public static void remove(Map<String, List<String>> m, String k, String v) {
        m.remove(k, v);
    }

    public static String randomValue(Map<String, List<String>> m, String termo) {
        return m.get(termo).get((int) (Math.random() * (m.get(termo).size())));
    }
}

