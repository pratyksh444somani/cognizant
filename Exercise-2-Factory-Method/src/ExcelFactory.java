public class ExcelFactory extends DocumentFactory {

    public Document create() {
        return new Excel();
    }

}