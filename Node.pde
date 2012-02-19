public class Node {
  private Arraylist<Node> fChildren;
  private Arraylist<Transformation> fTransforms;
  private Geometry fGeometry;

  public Node(Geometry g) {
    this.fChildren = new Arraylist<Node>();
    this.fTransforms = new Arraylist<Transformation>();
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