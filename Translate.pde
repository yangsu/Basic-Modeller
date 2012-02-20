public class Translate extends Transformation {

  public Translate(float value) {
    super(value);
  }

  public Translate(float x, float y, float z) {
    super(x, y, z);
  }

  public Translate(float x, float y, float z, float dx, float dy, float dz) {
    super(x, y, z, dx, dy, dz);
  }

  public void transform() {
    translate(fValue.x, fValue.y, fValue.z);
  }

  public void debug() {
    println("Transformation: translate("+fValue.x+", "+fValue.y+", "+fValue.z+")");
  }
}