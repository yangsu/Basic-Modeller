public class Node {
  private ArrayList<Node> fChildren;
  private ArrayList<Transformation> fTransforms;
  private Geometry fGeometry;
  private String fName;
  private Node fParent;

  public Node() {
    this.fChildren = new ArrayList<Node>();
    this.fTransforms = new ArrayList<Transformation>();
    this.fGeometry = null;
    this.fName = "";
    this.fParent = null;
  }

  public Node getParent() {
    return this.fParent;
  }
  public void setParent(Node p) {
    this.fParent = p;
  }

  public String getName() {
    return this.fName;
  }
  public void setName(String n) {
    this.fName = n;
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