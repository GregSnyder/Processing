//Guilloché, Gregor Schneider, Untergruppenbach, 26.12.2017
void setup() {
  fullScreen(); 
  frameRate(1); 
  background(0);
  stroke(255);
  strokeWeight(1);
  noFill();
}
void draw() {
  float a = 5;
  background(0);
  translate(width/2, height/2);
  float R = 30;
  float r = 10;
  float p = -25;
  float Q = 20;
  float m = 50;
  float n = 20;
  beginShape();
  for (int i=0; i <= width+3; i++) {
    float t = i*TWO_PI/width;
    float x = a*((R + r)*cos(m*t) + (r + p)*cos(((R + r)/r)*m*t) + Q*cos(n*t));   
    float y = a*((R + r)*sin(m*t) - (r + p)*sin(((R + r)/r)*m*t) + Q*sin(n*t));   
    curveVertex(x, y);
  }  
  endShape();
}
