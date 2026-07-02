public class Forecast {

    public static double predict(double amt, double rate, int year) {

        if (year == 0)
            return amt;

        return predict(amt, rate, year - 1) * (1 + rate);
    }

}