//Papillon by Gregor Schneider, 15.03.18
float time, step, dm, td, rd, x, y, deg = 0.0174533;
int ipoint, npoints;
void setup () {
  fullScreen();
  frameRate(25);
  noFill();
  strokeWeight(5);
  npoints = 60;
  time = 1;
  step = 0.005;
  td = 1;
  rd = 300;
}
void draw () {
    background(0);
    translate(width/2, height/2);
    for (ipoint = 1; ipoint <= npoints; ++ipoint){
      dm = 360 * ipoint/npoints;
      x = rd*cos(deg*sin(time)*dm*time);
      y = rd*sin(deg*cos(time)*dm*time);
      stroke(255);
      point(x,y);
      point(-x,y);
    }
    time = time + step;
}