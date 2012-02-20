public class Shear extends Transformation {

  public Shear(float value) {
    super(value);
  }

  public Shear(float x, float y, float z) {
    super(x, y, z);
  }

  public void apply() {
    shearX(fValue.x);
    shearY(fValue.y);
  }
}