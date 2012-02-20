public abstract class Transformation {
  protected PVector fValue;

  public Transformation(float value) {
    this(value, 0, 0);
  }

  public Transformation(float x, float y, float z) {
    fValue = new PVector(x, y, z);
  }

  public abstract void apply();
}