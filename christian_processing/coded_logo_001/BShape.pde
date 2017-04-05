class BShape {
  PShape    s;
  PVector[] p, mp;
  int sides;

  BShape(PShape ref) {
    s      = ref;
    sides = s.getVertexCount();
    //println(sides);
    p = new PVector[sides];
    mp = new PVector[sides];
    calcVertex();
  }
  void calcVertex() {
    for (int v=0; v<p.length; v++) {
      PVector w = s.getVertex(v) ;
      println("-->"+w);
      p[v] = w;
    }
    for (int i=0; i<sides; i++) {
      mp[i]=new PVector( (p[i].x+p[(i+1)%sides].x)/2, (p[i].y+p[(i+1)%sides].y)/2);
    }
  }
  void draw() {
    beginShape();
    for (int i=0; i<sides; i++) {
      PVector tmp1 = mp[i];
      PVector tmp2 = p[(i+1)%sides];
      PVector tmp3 = mp[(i+1)%sides];

      vertex(tmp1.x, tmp1.y);
      quadraticVertex(tmp2.x, tmp2.y, tmp3.x, tmp3.y);
    }
    endShape();
    //shape(s,0,0,100,100);
  }
}

