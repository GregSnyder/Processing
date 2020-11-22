// Trigonometrics, Gregor Schneider, Paris, 02.05.2017

void setup() {
  fullScreen();
}
void draw() {
  background(0);
  float s = height/2;
  translate(width/2, height/2);
  beginShape();
  stroke(255);
  noFill();
  float a = 360*mouseX/width;
  float b = 360*mouseY/height;
  float c = a-b;
  for (float t = 0; t <= 360; t += 1) {
    float x = s * cos(c*radians(t)+a) * cos(radians(t));
    float y = s * cos(c*radians(t)) * sin(radians(t));
    vertex(x, y);
  }
  endShape();
} 