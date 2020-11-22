import processing.pdf.*;
int a = 30;
int i = 0;
float[] c = new float[a];
float[] x = new float[a];
float[] y = new float[a];
int zx;
int zy;
void setup() {
  size(1440, 900);
  frameRate(60);
  colorMode(HSB,360,100,100);
  background(0);
  frameRate(60);
  for (i = 0; i < a; i++){
     c[i] = random(360);
     x[i] = random(width/10,9*width/10);
     y[i] = random(height/10,9*height/10);
  }
}
void draw() {
  zx = mouseX;
  zy = mouseY;
  if (mousePressed == true){
    for (i = 0; i < a; i++) {
        stroke(c[i], 100, 100);
        line(x[i], y[i], zx, zy);
      }
  }
}
void keyPressed() {
  if (key == 'B' || key == 'b') {         
    beginRecord(PDF, "Supernova####.pdf");         
    colorMode(HSB,360,100,100);
    background(0);                   
  } else if (key == 'E' || key == 'e') {  
    endRecord();                                                  
  }
}