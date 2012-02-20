public class Sphere extends Geometry {
  private int fDetail;

  public Sphere() {
    this.fDetail = gDefaultLevelOfDetail;
  }

  public void setDetail(int detail) {
    this.fDetail = detail;
  }

  public void drawGeometry() {
    fill(fColor);
    sphereDetail(fDetail);
    sphere(1);
  }
}