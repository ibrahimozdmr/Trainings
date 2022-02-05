import java.util.*;

public class LinkedList1 {
    public static void main(String args[]) {

        LinkedList<String> liste = new LinkedList<String>();
        liste.add("Portakal");
        liste.add("Limon");
        liste.add("Mandalina");
        liste.add("Armut");
        liste.add("Mandalina");
        liste.add("Elma");
        System.out.println("İlk liste: " + liste);
        liste.add(4, "Ayva");
        System.out.println("Değişen liste: " + liste);
        System.out.println("İlk öge: " + liste.getFirst());
        System.out.println("6.öge: " + liste.get(6));
        System.out.println("silinen: " + liste.removeFirst());
        System.out.println("silinen: " + liste.removeLast());
        System.out.println("Liste son hali: " + liste);
    }
}