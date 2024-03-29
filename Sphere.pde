public class Sphere extends Geometry {

  public void drawGeometry() {
    sphereDetail(fDetail);
    sphere(fSize.x);
  }

  public void debug() {
    println("Geometry: Sphere");
    println("color: "+red(fColor)+","+green(fColor)+","+blue(fColor));
  }
}