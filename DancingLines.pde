float h, t;
int numb = 11;
void setup () {
  fullScreen();
  colorMode(HSB);
}
void draw () {
  background(20);
  frameRate(25);
  strokeWeight(5);
  translate(width/2, height/2);
  for (int i = 1; i <= numb; i++){
    stroke(h+2*i,255,255);
    line(x(t+i),y(t+i),x(t+2*i),y(t+2*i));
    h += 0.1;
    if (h >= 244) {
      h = 0;
    }
  }
  t += 0.005;
}
float x(float t) {
  return 300*(sin(3*t));
}
float y(float t) {
  return 300*(sin(2*t));
}