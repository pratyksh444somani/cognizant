public class Main {

    public static void main(String[] args) {

        Product[] p = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Phone", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories")
        };

        Product a = Search.search(p, "Phone");

        if (a != null) {
            System.out.println("Product Found");
            a.show();
        } else {
            System.out.println("Product Not Found");
        }

    }

}