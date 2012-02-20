public class Sphere extends Geometry {

  public void drawGeometry() {
    fill(fColor);
    sphereDetail(fDetail);
    sphere(1);
  }

  public void debug() {
    println("Geometry: Sphere");
    println("color: "+red(fColor)+","+green(fColor)+","+blue(fColor));
  }
}