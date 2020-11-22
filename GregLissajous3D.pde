import nervoussystem.obj.*;
boolean record;
float i = 0.1;
void setup() {
  fullScreen(P3D);
  frameRate(20);
}
void draw() {
  background(0);
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "GregLissajous3D-####.obj");
  }
  stroke(255);
  noFill();
  translate(width/2, height/2+50);
  int a = 200;
  int nx = mouseX;
  int ny = mouseY;
  int nz = 1;
  float px = 0;
  float py = 0;
  float pz = 0;
  rotateX(radians(i));
    beginShape();
    for (int t = 0; t < width; t++) {
      vertex(a*cos(nx*radians(t)+px),a*cos(ny*radians(t)+py),a*cos(nz*radians(t)+pz));
    }
    endShape();
    i++;
    if (record) {
      endRecord();
      record = false;
  }
}
void keyPressed()
{
  if (key == 'r') {
    record = true;
  }
}