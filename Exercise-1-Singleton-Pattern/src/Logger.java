public class Logger {

    private static Logger log;

    private Logger() {
        System.out.println("Logger started");
    }

    public static Logger getLog() {
        if (log == null) {
            log = new Logger();
        }
        return log;
    }

    public void show(String msg) {
        System.out.println(msg);
    }
}