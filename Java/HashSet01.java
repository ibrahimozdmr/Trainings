import java.util.*;

public class HashSet01 {
    public static void main(String[] args) {
        HashSet <String> hs = new HashSet<String>();
        hs.add("İstanbul");
        hs.add("Samsun");
        hs.add("Kocaeli");
        hs.add("Malatya");
        hs.add("Diyarbakır");
        hs.add("Muğla");
        hs.add("Muğla");
        System.out.println("İllerin sırasız hali");
        System.out.println(hs);
        System.out.println("İllerin sıralı hali");
        TreeSet <String> siraliHs = new TreeSet<String>(hs);
        System.out.println(siraliHs);
    }
}
