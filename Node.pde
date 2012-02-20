public class Node {
  private ArrayList<Node> fChildren;
  private ArrayList<Transformation> fTransforms;
  private Geometry fGeometry;

  public Node() {
    this.fChildren = new ArrayList<Node>();
    this.fTransforms = new ArrayList<Transformation>();
    this.fGeometry = null;
  }

  public void setGeometry(Geometry g) {
    this.fGeometry = g;
  }
  public void addChild(Node n) {
    fChildren.add(n);
  }

  public void addTransformation(Transformation t) {
    fTransforms.add(t);
  }

  public void draw() {
    pushMatrix();
    // Apply local transformations
    for (Transformation t : fTransforms) {
      t.apply();
    }
    fGeometry.draw();
    for (Node n : fChildren) {
      n.draw();
    }
    popMatrix();
  }

}