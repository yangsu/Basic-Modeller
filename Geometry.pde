public abstract class Geometry {
  private float fSize;
  private color fColor;

  public Geometry(float size, color c) {
    this.fSize = size;
    this.fColor = c;
  }

  public abstract void draw();
}