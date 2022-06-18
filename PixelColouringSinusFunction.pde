// PixelColouringSinusFunction, Gregor Schneider, 06.06.2022

void setup() {
  fullScreen();
  colorMode(HSB);
}

void draw() {
  if (mousePressed == true){  
    loadPixels();
    for(int x=0; x<width; x++) {
      for(int y=0; y<height; y++) {
        float f = mouseY;
        float c = f+sin(x*sin(f+y/10))*sin(y*mouseX);
        pixels[x + y*width] = color(128 + 128 * sin(c), 255, 255);
      }
    }
    updatePixels();
    }
  }
