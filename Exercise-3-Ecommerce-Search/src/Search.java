public class Search {

    public static Product search(Product[] p, String name) {

        for (int i = 0; i < p.length; i++) {

            if (p[i].name.equalsIgnoreCase(name)) {
                return p[i];
            }

        }

        return null;
    }

}