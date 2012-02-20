public class Shear extends Transformation {

  public Shear(float value) {
    this(value, value, 0);
  }

  public Shear(float x, float y) {
    this(x, y, 0);
  }

  public Shear(float x, float y, float z) {
    super(x, y, z);
  }

  public Shear(float x, float y, float z, float dx, float dy, float dz) {
    super(x, y, z, dx, dy, dz);
  }


  public void transform() {
    shearX(fValue.x);
    shearY(fValue.y);
  }

  public void debug() {
    println("Transformation: shear("+fValue.x+", "+fValue.y+")");
  }
}