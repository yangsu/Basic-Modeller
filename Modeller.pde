int w, h;
color bgColor;
boolean fade;
int fadeOpacity;

color readColor(String vals[]) {
  return color(int(vals[1]), int(vals[2]), int(vals[3]));
}
void readConfig() {
  String lines[] = loadStrings("sketch.config");
  for (String l : lines) {
    if (!(l.length() == 0 || l.charAt(0) == '#')) {
      String ll[] = splitTokens(l, "= ");
      String name = ll[0];
      if (name.equals("width"))
        w = int(ll[1]);
      if (name.equals("height"))
        h = int(ll[1]);
      if (name.equals("fade"))
        fade = boolean(ll[1]);
      if (name.equals("fadeOpacity"))
        fadeOpacity = int(ll[1]);
      if (name.equals("bgColor"))
        bgColor = readColor(ll);
    }
  }

}
void setup() {
  readConfig();
  size(w, h, P3D);
  background(bgColor);
  smooth();
}

void draw() {
  // Fade
  if (fade) {
    noStroke();
    fill(bgColor, fadeOpacity);
    rect(0, 0, width, height);
  }
}

void keyPressed() {
  switch(key) {
    case 'f':
      fade = !fade;
      break;
  }
}
