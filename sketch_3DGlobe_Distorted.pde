float a, f, m, u, v, x, y, z;

void setup() {  
  fullScreen(P3D);
  strokeWeight(2);
  frameRate(25);
  noFill();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  a = 200;
  f = radians(frameCount/2);
  m = f % 10;
  rotateX(f);
  for (int i=0; i<=4; i++) {//normally 360 degrees
    beginShape();
    for (int j=0; j <= 360; j++) {//normally 360 degrees
      u = radians(j/2);
      v = radians(180*cos(u + radians(90*i)*m));
      x = a * ((1+0.5*cos(u))*cos(v));
      y = a * (0.5*sin(u));
      z = a * ((1+0.5*cos(u))*sin(v));
      stroke(255);
      curveVertex(x, y, z);
    }
    endShape();
  }
}
