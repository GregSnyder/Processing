void setup() {
  fullScreen();
}

void draw() {
  background(0);
  translate(width/2,height/2);
  stroke(255);
  noFill();
  float a = height/3;
  float f1 = 10*mouseX/width;
  float f2 = 10*mouseY/height;
  beginShape();
  for (int t=0; t <= width; t++) {
    vertex(a*sin(radians(f1*t)),a*sin(radians(f2*t)));
  }  
  endShape();
}