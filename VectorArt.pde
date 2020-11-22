// VectorFlowArt inspired by kimri.org, Gregor Schneider, 02.07.2017
float[] x;
float[] y;
float s = 0.001;
void setup() {
  fullScreen();
  background(0);
  int n = width;
  x = new float[n];
  y = new float[n];
  for (int i = 0; i < x.length; i++) {
    x[i]= random(0, width);
    y[i]= random(0, width);
  }
}
void draw() {
  noStroke();
  fill(255, 5);
  for (int i = 0; i < x.length; i++) {
    float alpha = customNoise(x[i] * s, y[i] * s)*2*PI;
    x[i]+= cos(alpha);
    y[i]+= sin(alpha);
    x[i]= x[i]%width;
    y[i]= y[i]%height;
    ellipse(x[i], y[i], 4, 4);
  }
  if (frameCount > 6000){
    noLoop();
  }
}
float customNoise(float x, float y) {
  return (mouseX*mouseY + noise(x,y));
}