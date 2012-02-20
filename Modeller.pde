// Globals
int gW, gH;
color gBGColor;
int gDefaultLevelOfDetail;

boolean readBoolean(String vals[]) { return boolean(vals[1]); }
int readInt(String vals[]) { return int(vals[1]); }
float readFloat(String vals[]) { return float(vals[1]); }
color readColor(String vals[]) {
  return color(int(vals[1]), int(vals[2]), int(vals[3]));
}
void readConfig() {
  String lines[] = loadStrings("sketch.config");
  for (String l : lines) {
    if (!(l.length() == 0 || l.charAt(0) == '#')) {
      String vals[] = splitTokens(l, "= ");
      String name = vals[0];
      if (name.equals("width"))
        gW = readInt(vals);
      if (name.equals("height"))
        gH = readInt(vals);
      if (name.equals("BGColor"))
        gBGColor = readColor(vals);
      if (name.equals("defaultLevelOfDetail"))
        gDefaultLevelOfDetail = readInt(vals);
    }
  }
}

void setup() {
  readConfig();
  size(gW, gH, P3D);
  background(gBGColor);
  smooth();
}

void draw() {
}

void keyPressed() {
}
