import processing.pdf.*;

boolean saveOneFrame = false;
float z = 50;
float i;
float j;
float x;
float y;

void setup() {
  size(1440, 900);
  frameRate(60);
}

void draw() {
  if (saveOneFrame == true) {
  beginRecord(PDF, "export-####.pdf");
  }
  background(0);
  noFill();
  i = 10 * mouseX/width;
  j = 10 * mouseY/height;
  for (x = -4*z; x < width + 4*z; x += (2*z)) {
    for (y = -2*z; y < height + 2*z; y += z) {
      stroke(255);
      //ellipse(x + 25, y + 25, i*j*z, i*j*z);
      ellipse(x + z + 25, y, i*j*z, i*j*z);
    }
  }
  if (saveOneFrame == true) {
    endRecord();
    saveOneFrame = false;
  }
}

void mousePressed() {
  saveOneFrame = true;
}