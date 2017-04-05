PShape   s;
BShape[] chars;

void setup() {
  size(800, 800);
  colorMode(HSB);
  //frameRate(1);
  //colorMode(HSB);
  s = loadShape("coded_trace.svg");
  chars = new BShape[10];
  int k = 0;
  for (int i=0; i<s.getChildCount(); i++) {
    for (int j=0; j<s.getChild(i).getChildCount(); j++) {
      println(i+" "+j+" "+k);
      chars[k] = new BShape(s.getChild(i).getChild(j));
      chars[k].scale(2);
      k++;
    }
  }
}

void draw() {
  background(255);
  //scale(2);
  //shape(s,0,0,400,400);
  impact(color(228,255,228));
  color cc = color(0);
  for(int i=0; i<chars.length/2; i++){
    //println(chars[i].sides+" "+chars[i+chars.length/2].sides);
    for(int j=0; j<chars[i].sides; j++){
      int k = (int)map(j,0,chars[i].sides,0,chars[i+chars.length/2].sides);
      float f  = map(j, 0, chars[i].sides/2, 0, 1);
      cc = lerpColor(color(0,255, 255), color(128, 255, 255), f);
      stroke(cc,128);
      PVector a, b, c, d;
      a = chars[i].p[(j+frameCount)%chars[i].p.length];
      b = chars[i+chars.length/2].p[(k+frameCount)%chars[i+chars.length/2].p.length];
      line(a.x,a.y,b.x,b.y);
      c = new PVector(map(i,0,chars[i].sides,0,width),0);
      d = new PVector(map(k,0,chars[i+chars.length/2].sides-2,40,width-40),100);
      //line(a.x,a.y,c.x,c.y);
      line(b.x,b.y,d.x,d.y);
      noFill();stroke(128,255,200);rectMode(CENTER);rect(a.x,a.y,8,8);stroke(96);ellipse(b.x,b.y,4,4);rect(d.x,d.y,4,4);
    }
  }
//  for(int i=0; i<chars.length; i++){
//    chars[chars.length-i-1].draw();
//  }
  
  atari(color(255,0,255));
  //noLoop();
}
void atari(color cc){
  for(int i=0; i<chars.length/2; i++){
    chars[i].drawSpecial();
  }
}
void impact(color cc){
  for(int i=0; i<chars.length/2; i++){
    chars[chars.length-i-1].drawFilled(cc);
  }
}

