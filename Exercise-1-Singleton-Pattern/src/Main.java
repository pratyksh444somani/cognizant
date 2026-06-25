public class Main {

    public static void main(String[] args) {

        Logger a = Logger.getLog();
        a.show("Program started");

        Logger b = Logger.getLog();
        b.show("Reading file");

        if (a == b) {
            System.out.println("Only one logger object created");
        }
    }
}