class ParametreliMetot {
    public static int ortala(int a, int b) {
        int t = 0;
        t = (a + b) / 2;
        System.out.println(t);
        return t;
    }

    public static void main(String[] args) {
        int sayi1 = 4;
        int sayi2 = 8;
        System.out.print("4 ile 8'nın ortalaması: ");
        ortala(sayi1, sayi2);
    }
}