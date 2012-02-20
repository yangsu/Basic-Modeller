public class Box extends Geometry {

  public Box(color c) {
    super(c);
  }

  public void drawGeometry() {
    fill(fColor);
    box(1);
  }
}