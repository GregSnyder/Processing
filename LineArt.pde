/**
another abrstract art generator  by
<a href="http://www.local-guru.net/blog/">Guru</a> 
press 'p' to pause for screenshots, 
press any other key to change the color
*/
PVector p1 = new PVector(random(width/2),random(height/2));
PVector p2 = new PVector(random(width/2),random(height/2));

PVector v1 = new PVector( random(0,1), random(0,1));
PVector v2 = new PVector( random(0,1), random(0,1));

void setup() {
  fullScreen();
  background(0);
  smooth();
  stroke(0,0,255,20);
}

void draw() {
  scale(2,2);
  p1.add(v1);
  p2.add(v2);
  
  if (p1.x > width/2 || p1.x < 0) {
    v1.x = -1*v1.x;
    v1.y += random(-0.1,0.1);
  }
  if (p2.x > width/2 || p2.x < 0) {
    v2.x = -1*v2.x;
    v2.y += random(-0.1,0.1);
  }
  if (p1.y > height/2 || p1.y < 0) {
    v1.x += random(-0.1,0.1);
    v1.y = -1*v1.y;
  }
  if (p2.y > height/2 || p2.y < 0) {
    v2.x += random(-0.1,0.1);
    v2.y = -1*v2.y;
  }
    
  /*
  if( random(100) > 99.99 ) {
    v1.y = -1*v1.y;
    v1.x += random(-0.1,0.1);
  }
  if( random(100) > 99.99 ) {
    v2.y = -1*v2.y;
    v2.x += random(-0.1,0.1);
  }
  if( random(100) > 99.99 ) {
    v1.x = -1*v1.x;
    v1.y += random(-0.1,0.1);
  }
  if( random(100) > 99.99 ) {
    v2.x = -1*v2.x;
    v2.y += random(-0.1,0.1);

  }
  */
  line(p1.x,p1.y,p2.x,p2.y);
}

void keyPressed() {
  if (key == 'p') {
    noLoop();    
  } else {
    stroke(color(random(255),random(255),random(255), 20 ));
    loop();    
  }
}