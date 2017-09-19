import processing.pdf.*;
int i, j;
int num = 7;
float h;
float[] c= new float[num];
void nextColor() {
  if (i < num-1){
    i += 1;
  } else {
    i = 0;
  }
}
void setup() {
    fullScreen();
    noCursor();
    background(0);
    smooth();
    noCursor();
    colorMode(HSB,360,100,100,100);
    for (i=0; i < num; i++){
       c[i] = random(360);
    }
}
void draw() {
    i = 0;
    background(0);
    translate(width/2, height/2);
    for (j=0; j<360; j += 1) {
        pushMatrix();
        rotate(radians(j));
        scale(map(2*sin(radians(j*mouseX)),-1,1,1,2),map(3*sin(radians(j*mouseX)),-1,1,1,2));
        noFill();
        h = c[i];
        stroke(h, 100, 100, 95);
        ellipse(0,0,mouseX,mouseY);
        popMatrix();
        nextColor();
      }
    }
void keyPressed() {
  if (key == 'B' || key == 'b') {         
    beginRecord(PDF, "Spirograph####.pdf");         
    colorMode(HSB,360,100,100,100);
    background(0);                   
  } else if (key == 'E' || key == 'e') {  
    endRecord();                                                  
  }
}