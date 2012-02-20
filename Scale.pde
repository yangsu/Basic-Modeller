public class Scale extends Transformation {

  public Scale(float value) {
    this(value, value, value);
  }

  public Scale(float x, float y, float z) {
    super(x, y, z);
  }

  public Scale(float x, float y, float z, float dx, float dy, float dz) {
    super(x, y, z, dx, dy, dz);
  }

  public void transform() {
    scale(fValue.x, fValue.y, fValue.z);
  }

  public void debug() {
    println("Transformation: scale("+fValue.x+", "+fValue.y+", "+fValue.z+")");
  }
}