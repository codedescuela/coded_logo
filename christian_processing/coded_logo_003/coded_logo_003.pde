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
  
  for(int i=0; i<chars.length/2; i++){
    println(chars[i].sides+" "+chars[i+chars.length/2].sides);
    for(int j=0; j<chars[i].sides; j++){
      int k = (int)map(j,0,chars[i].sides,0,chars[i+chars.length/2].sides);
      line(chars[i].p[j].x,chars[i].p[j].y,chars[i+chars.length/2].p[k].x,chars[i+chars.length/2].p[k].y);
    }
  }
  noLoop();
}

