public class Sphere extends Geometry {
  private int fDetail;

  public Sphere(float size, color c) {
    this(size, c, gDefaultLevelOfDetail);
  }

  public Sphere(float size, color c, int detail) {
    super(size, c);
    fDetail = detail;
  }

  public void drawGeometry() {
    fill(fColor);
    sphereDetail(fDetail);
    sphere(fSize);
  }
}