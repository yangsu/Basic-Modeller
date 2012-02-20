// Globals
int gW, gH;
color gBGColor;
int gDefaultLevelOfDetail;

ArrayList<Node> gNodes;

boolean readBoolean(String vals[]) { return boolean(vals[1]); }
int readInt(String vals[]) { return int(vals[1]); }
float readFloat(String vals[]) { return float(vals[1]); }
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
        while (!key.equals("EndNode") && i < lines.length) {
          vals = readVals(lines[i]);
          if (vals != null) {

          }
          i += 1;
        }
        gNodes.add(n);
      }
      else {
        readGlobals(key, vals);
      }
    }
  }
}

void setup() {
  gNodes = new ArrayList<Node>();
  readConfig();
  size(gW, gH, P3D);
  background(gBGColor);
  smooth();
}

void draw() {
}

void keyPressed() {
}
