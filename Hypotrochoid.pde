void setup() {
  fullScreen();
  smooth();
  noCursor();
  stroke(255);
  noFill(); 
}

void draw() {
  background(0);
  float s = height/4;
  translate(width/2, height/2);
  beginShape();
  float a = mouseX;
  float b = mouseY;
  float c = a - b;
  for (float t = 0; t <= 360; t += 1) {
    float x = s * (cos(c*radians(t)) + cos(radians(t)));
    float y = s * (sin(c*radians(t)) - sin(radians(t)));
    vertex(x,y);
  }
  endShape();
} 
