int w,h,i,seed;
boolean motion = true;

void setup() {
  frameRate(15);
  fullScreen();
  w = width;
  h = height;
  i = 1;
  seed = int(random(929));
  noiseSeed(seed);
  noFill();
  background(0);
  stroke(255, 10);
  smooth();
}

void draw() {
  if (motion == true) {
    float t = i / 1000.0;
    float x0 = noise(t,1);
    float y0 = noise(t,2);
    float x1 = noise(t,3);
    float y1 = noise(t,40);
    pushMatrix();
    translate(w/2,-h/3);
    rotate(radians(45));
    bezier(w*x0, h*y0, w*x1, h*y1, h*y1, w*x1, h*y0, w*x0);
    popMatrix();
    i +=1;
  }
}

void mousePressed() {
  if (motion == true) {
    motion = false;
    save("JellyCreature" + seed + "_state" + frameCount + ".png");
    println("noiseSeed: " + seed + " frameCount: " + frameCount);
  } else {
    motion = true;
  }
} 
