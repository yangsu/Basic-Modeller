public class Sphere extends Geometry {
  private int fDetail;

  public Sphere(color c) {
    this(c, gDefaultLevelOfDetail);
  }

  public Sphere(color c, int detail) {
    super(c);
    fDetail = detail;
  }

  public void drawGeometry() {
    fill(fColor);
    sphereDetail(fDetail);
    sphere(1);
  }
}