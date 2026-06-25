public class FactoryMethodPattern {

    public static void main(String[] args) {

        DocumentFactory f;

        f = new WordFactory();
        f.show();

        f = new PdfFactory();
        f.show();

        f = new ExcelFactory();
        f.show();

    }

}