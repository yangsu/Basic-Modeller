public abstract class Geometry {
  protected color fColor;
  protected int fDetail;

  public Geometry() {
    this.setColor(0);
    this.fDetail = gDefaultLevelOfDetail;
  }

  public void setColor(color c) {
    this.fColor = c;
  }

  public void setDetail(int detail) {
    this.fDetail = detail;
  }

  public abstract void drawGeometry();

  public void draw() {
    pushStyle();
    this.drawGeometry();
    popStyle();
  }

  public abstract void debug();
}