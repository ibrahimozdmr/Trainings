import java.util.HashSet;
import java.util.Iterator;

public class iteratorHash {
    public static void main(String[] args) {
        HashSet<String> hSet = new HashSet<String>();
        hSet.add("Halil");
        hSet.add("Mehmet");
        hSet.add("Kerim");
        Iterator<String> i = hSet.iterator();
        while(i.hasNext()){
            System.out.println("Küme elemanı: " + i.next());
            i.remove();
        }
        System.out.println("Elemanlar silindi.");
        System.out.println(hSet);
    }
}
