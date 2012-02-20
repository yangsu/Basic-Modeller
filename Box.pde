public class Box extends Geometry {
  private float fWidth, fHeight, fDepth;

  public Box(float size, color c) {
    this(size, c, size, size, size);
  }

  public Box(float size, color c, float w, float h, float d) {
    super(size, c);
    this.fWidth = w;
    this.fHeight = h;
    this.fDepth = d;
  }

  public void drawGeometry() {
    fill(fColor);
    box(fWidth, fHeight, fDepth);
  }
}