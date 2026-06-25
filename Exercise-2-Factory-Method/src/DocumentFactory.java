public abstract class DocumentFactory {

    public abstract Document create();

    public void show() {
        Document d = create();
        d.open();
    }

}