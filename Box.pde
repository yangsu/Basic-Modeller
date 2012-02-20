public class Box extends Geometry {

  public void drawGeometry() {
    fill(fColor);
    box(fSize.x, fSize.y, fSize.z);
  }

  public void debug() {
    println("Geometry: Box");
    println("color: "+red(fColor)+","+green(fColor)+","+blue(fColor));
  }
}