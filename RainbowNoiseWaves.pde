//RainbowNoiseWaves, Gregor Schneider, 04.06.2017
float x, y, z = 0;
void setup() {
    y = height/2;
    fullScreen();
    colorMode(HSB);
    background(0);
}
void draw() {
    noFill();
    stroke((z*100%255), 255, 255, 200);
    beginShape();
    for (x = 0; x < width; x += 10) {
      curveVertex(x, map(noise(x/100, z), 0, 1, -y, y) +y);
    }
    endShape();
    z += 0.005;
}