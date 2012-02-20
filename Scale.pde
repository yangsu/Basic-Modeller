public class Scale extends Transformation {

  public Scale(float value) {
    this(value, value, value);
  }

  public Scale(float x, float y, float z) {
    super(x, y, z);
  }

  public void apply() {
    scale(fValue.x, fValue.y, fValue.z);
  }

  public void debug() {
    println("Transformation: scale("+fValue.x+", "+fValue.y+", "+fValue.z+")");
  }
}