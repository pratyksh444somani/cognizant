public class Main {

    public static void main(String[] args) {

        Logger l1 = Logger.getObj();
        l1.log("Application started");

        Logger l2 = Logger.getObj();
        l2.log("Reading data");

        if (l1 == l2) {
            System.out.println("Only one object created");
        } else {
            System.out.println("Different objects");
        }
    }
}