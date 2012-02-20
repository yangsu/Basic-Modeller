public abstract class Geometry {
  protected color fColor;
  protected int fDetail;
  protected PVector fSize;

  public Geometry() {
    this.setColor(0);
    this.fDetail = gDefaultLevelOfDetail;
    this.fSize = new PVector();
  }

  public void setColor(color c) {
    this.fColor = c;
  }

  public void setDetail(int detail) {
    this.fDetail = detail;
  }

  public void setSize(float size) {
    this.fSize.set(size, 0, 0);
  }

  public void setSize(float w, float h, float d) {
    this.fSize.set(w, h, d);
  }

  public abstract void drawGeometry();

  public void draw() {
    pushStyle();
    this.drawGeometry();
    popStyle();
  }

  public abstract void debug();
}