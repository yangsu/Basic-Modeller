public class Box extends Geometry {

  public void drawGeometry() {
    fill(fColor);
    box(1);
  }

  public void debug() {
    println("Geometry: Box");
    println("color: "+red(fColor)+","+green(fColor)+","+blue(fColor));
  }
}