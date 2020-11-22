//SilentNoise, Gregor Schneider, Paris, 14.04.2017

void setup() {
  fullScreen();
}

void draw() {
  background(0);
  stroke(255);
  beginShape();
  for (int i=0; i <= width; i++) {
    vertex(i, height/3*sin(radians(mouseY*i))*cos(radians(mouseX*i))+height/2);
  }  
  endShape(CLOSE);
}