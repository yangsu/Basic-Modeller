public class Rotate extends Transformation {

  public Rotate(float value) {
    super(value);
  }

  public Rotate(float x, float y, float z) {
    super(x, y, z);
  }

  public Rotate(float x, float y, float z, float dx, float dy, float dz) {
    super(x, y, z, dx, dy, dz);
  }

  public void transform() {
    rotateX(fValue.x);
    rotateY(fValue.y);
    rotateZ(fValue.z);
  }

  public void debug() {
    println("Transformation: rotate("+fValue.x+", "+fValue.y+", "+fValue.z+")");
  }
}