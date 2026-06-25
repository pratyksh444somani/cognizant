public class Logger {

    private static Logger obj;

    private Logger() {
        System.out.println("Logger created");
    }

    public static Logger getInstance() {
        if (obj == null) {
            obj = new Logger();
        }
        return obj;
    }

    public void print(String s) {
        System.out.println(s);
    }
}