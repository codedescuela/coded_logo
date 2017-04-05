PShape   s;
BShape[] chars;

void setup() {
  size(400, 400);
  frameRate(1);
  colorMode(HSB);
  s = loadShape("coded_trace.svg");
  chars = new BShape[10];
  int k = 0;
  for (int i=0; i<s.getChildCount(); i++) {
    for (int j=0; j<s.getChild(i).getChildCount(); j++) {
      println(i+" "+j+" "+k);
      chars[k] = new BShape(s.getChild(i).getChild(j));
      k++;
    }
  }
}

void draw() {
  background(255);
  //shape(s, 0, 0, 400, 400);
  for(int i=0; i<chars.length; i++){
    chars[chars.length-i-1].draw();
  }
}

