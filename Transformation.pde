public abstract class Transformation {
  protected PVector fValue;
  protected PVector fDelta;

  public Transformation(float value) {
    this(value, 0, 0);
  }

  public Transformation(float x, float y, float z) {
    fValue = new PVector(x, y, z);
    fDelta = new PVector(0, 0, 0);
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