public abstract class Geometry {
  protected float fSize;
  protected color fColor;

  public Geometry(float size, color c) {
    this.fSize = size;
    this.fColor = c;
  }

  public abstract void drawGeometry();

  public void draw() {
    pushStyle();
    this.drawGeometry();
    popStyle();
  }
}