int w,h;
void setup() {
  frameRate(15);
  fullScreen();
  w = width;
  h = height;
  noFill();
  background(0);
  stroke(255, 10);
  smooth();
}
void draw() {
  float t = frameCount / 1000.0;
  float x0 = noise(t,1);
  float y0 = noise(t,2);
  float x1 = noise(t,3);
  float y1 = noise(t,4);
  pushMatrix();
  translate(w/2,-h/3);
  rotate(radians(45));
  bezier(w*x0, h*y0, w*x1, h*y1, h*y1, w*x1, h*y0, w*x0);
  popMatrix();
}
