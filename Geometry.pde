public abstract class Geometry {
  protected color fColor;

  public Geometry() {
    this.setColor(0);
  }

  public void setColor(color c) {
    this.fColor = c;
  }

  public abstract void drawGeometry();

  public void draw() {
    pushStyle();
    this.drawGeometry();
    popStyle();
  }
}