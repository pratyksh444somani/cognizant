public class Forecast {

    public static double find(double amt, double rate, int year) {

        if (year == 0)
            return amt;

        return find(amt, rate, year - 1) * (1 + rate);
    }

}