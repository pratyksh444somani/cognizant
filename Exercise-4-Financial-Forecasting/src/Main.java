import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter present value : ");
        double amt = sc.nextDouble();

        System.out.print("Enter growth rate (%) : ");
        double rate = sc.nextDouble();

        System.out.print("Enter years : ");
        int year = sc.nextInt();

        double ans = Forecast.predict(amt, rate / 100, year);

        System.out.printf("Future Value : %.2f", ans);

        sc.close();
    }

}