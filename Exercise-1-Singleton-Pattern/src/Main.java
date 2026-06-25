public class Main {

    public static void main(String[] args) {

        Logger a = Logger.getInstance();
        a.print("Program started");

        Logger b = Logger.getInstance();
        b.print("Logging some data");

        if (a == b) {
            System.out.println("Same object");
        } else {
            System.out.println("Different objects");
        }
    }
}