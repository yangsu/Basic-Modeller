public abstract class Transformation {
  protected PVector fValue;
  protected PVector fDelta;

  public Transformation(float value) {
    this(value, 0, 0);
  }

  public Transformation(float x, float y, float z) {
    this(x, y, z, 0, 0, 0);
  }

  public Transformation(float x, float y, float z, float dx, float dy, float dz) {
    fValue = new PVector(x, y, z);
    fDelta = new PVector(dx, dy, dz);
  }

  public void setDelta(float x, float y, float z) {
    fDelta.set(x, y, z);
  }

  public void step() {
    fValue.add(fDelta);
  }

  public abstract void transform();

  public void apply() {
    this.step();
    this.transform();
  }

  public abstract void debug();
}