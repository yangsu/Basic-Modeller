public class Translate extends Transformation {

  public Translate(float value) {
    super(value);
  }

  public Translate(float x, float y, float z) {
    super(x, y, z);
  }

  public void apply() {
    translate(fValue.x, fValue.y, fValue.z);
  }

  public void debug() {
    println("Transformation: translate("+fValue.x+", "+fValue.y+", "+fValue.z+")");
  }
}