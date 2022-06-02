package aula10;

import java.util.HashMap;
import java.util.Map;

public class Ex1 {
    public static void main(String[] args) {
        Map<String, String> data = new HashMap<>();
        add(data, "branco", "cor da neve");
        add(data, "vermelho", "cor do sangue");
        add(data, "verde", "cor da relva");
        add(data, "azul", "cor da agua");
        add(data, "cinzento", "asfalto");
        remove(data, "branco", "cor da neve");
        System.out.println(data);
        System.out.println(data.keySet());
        System.out.println(data.values());
        imprimir(data);
    }

    public static void add(Map<String, String> m, String k, String v) {
        m.put(k, v);
    }

    public static void remove(Map<String, String> m, String k, String v) {
        m.remove(k , v);
    }
    
    public static String imprimir(Map<String, String> dados) {
		String c = "";
		for(int i = 0; i < 6; i++){
			c += String.format("%s que tem a %s", dados.keySet(), dados.values());
		}
		return c;
    }
}
