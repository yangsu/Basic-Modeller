public class Rotate extends Transformation {

  public Rotate(float value) {
    super(value);
  }

  public Rotate(float x, float y, float z) {
    super(x, y, z);
  }

  public void apply() {
    rotateX(fValue.x);
    rotateY(fValue.y);
    rotateZ(fValue.z);
  }
}