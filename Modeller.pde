// Globals
int gW, gH;
color gBGColor;
int gDefaultLevelOfDetail;

ArrayList<Node> gNodes;
Node gRoot;

boolean readBoolean(String vals[]) { return boolean(vals[1]); }
int readInt(String vals[]) { return int(vals[1]); }
int readInt(String vals[], int i) { return int(vals[i]); }
float readFloat(String vals[]) { return float(vals[1]); }
float readFloat(String vals[], int i) { return float(vals[i]); }
color readColor(String vals[]) {
  if (vals.length == 2)
    return color(int(vals[1]));
  else
    return color(int(vals[1]), int(vals[2]), int(vals[3]));
}

String[] readVals(String l) {
  if (!(l.length() == 0 || l.charAt(0) == '#'))
    return splitTokens(l, "= ");
  else
    return null;
}

void readGlobals(String key, String vals[]) {
  if (key.equals("width"))
    gW = readInt(vals);
  if (key.equals("height"))
    gH = readInt(vals);
  if (key.equals("BGColor"))
    gBGColor = readColor(vals);
  if (key.equals("defaultLevelOfDetail"))
    gDefaultLevelOfDetail = readInt(vals);
}

void readConfig() {
  String lines[] = loadStrings("sketch.config");
  String l;
  for (int i = 0; i < lines.length; i++) {
    String vals[] = readVals(lines[i]);
    if (vals != null) {
      String key = vals[0];
      if (key.equals("BeginNode")) {
        Node n = new Node();
        Geometry g = null;
        color c = -1;
        while (!key.equals("EndNode") && i < lines.length) {
          vals = readVals(lines[i]);
          if (vals != null) {
            key = vals[0];
            if (key.equals("name"))
              n.setName(vals[1]);
            if (key.equals("geometry")) {
              if (vals[1].equals("sphere"))
                g = new Sphere();
              else if (vals[1].equals("box"))
                g = new Box();

              // Attach color and geometry
              if (c != -1)
                g.setColor(c);
              n.setGeometry(g);
            }
            if (key.equals("detail") && g != null)
              g.setDetail(readInt(vals));
            if (key.equals("color") && g != null)
              g.setColor(readColor(vals));
            if (key.equals("size") && g != null)
              g.setSize(readFloat(vals));
            if (key.equals("scale")) {
              if (vals.length == 2)
                n.addTransformation(new Scale(readFloat(vals)));
              else
                n.addTransformation(new Scale(readFloat(vals, 1),
                                              readFloat(vals, 2),
                                              readFloat(vals, 3)));
            }
            if (key.equals("translate")) {
                n.addTransformation(new Translate(readFloat(vals, 1),
                                                  readFloat(vals, 2),
                                                  readFloat(vals, 3)));
            }
            if (key.equals("rotate")) {
                n.addTransformation(new Rotate(readFloat(vals, 1),
                                               readFloat(vals, 2),
                                               readFloat(vals, 3)));
            }
            if (key.equals("shear")) {
                n.addTransformation(new Shear(readFloat(vals, 1),
                                              readFloat(vals, 2)));
            }
            if (key.equals("parent")) {
              for (Node p : gNodes) {
                if (p.getName().equals(vals[1])) {
                  p.addChild(n);
                  n.setParent(p);
                  break;
                }
              }
            }
          }
          i += 1;
        }
        gNodes.add(n);
      }
      else {
        readGlobals(key, vals);
      }

      // Assuming only 1 root
      for (Node n : gNodes) {
        if (n.getParent() == null) {
          gRoot = n;
          break;
        }
      }
    }
  }
}

void setup() {
  gNodes = new ArrayList<Node>();
  readConfig();
  size(gW, gH, P3D);
  background(gBGColor);
  // stroke(50);
  // noLoop();
  gRoot.debug();
}

void drawAxis() {
  pushStyle();
  stroke(0,0, 255);
  line(-100, 0, 0, 100, 0, 0);
  stroke(0,255,0);
  line(0, -100, 0, 0, 100, 0);
  stroke(255,0,0);
  line(0, 0, -100, 0, 0, 100);
  popStyle();
}
void draw() {
  lights();
  background(0);

  // Change height of the camera with mouseY
  camera(mouseX - width/2, mouseY - height/2, 220.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  drawAxis();
  noStroke();
  gRoot.draw();
}

void keyPressed() {
}
