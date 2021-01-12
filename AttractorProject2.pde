//AttractorProject2, Gregor Schneider, Stuttgart 20.03.2019

//Particles and colours
int num = 1000;
int [] col = new int[num];
float inc = 1;
//Displacement
float[] x = new float[num];
float[] y = new float[num];
//Velocity
float[] vx = new float[num];
float[] vy = new float[num];
//Acceleration
float[] ax = new float[num];
float[] ay = new float[num];
//Parameters
float radius = 4;

//Setups
void setup(){
  noCursor();
  fullScreen();
  frameRate(30);
  colorMode(HSB, 255, 100, 100);
  background(0);
  noStroke(); 
  //fill(255);
  for (int i = 0; i < num; i++){
    x[i] = random(width);
    y[i] = random(height);
    vx[i] = 0;
    vy[i] = 0;
    ax[i] = 0;
    ay[i] = 0;
  } 
}

//Updates
void draw(){
  fill(0, 25);
  rect(0, 0, width, height);
  for (int i = 0; i < num; i++){
    float d = dist(mouseX, mouseY, x[i], y[i]);
      if (x[i] >= width+radius || x[i] <= -radius) {
         ax[i] = 0;
         vx[i] = 0;
      }
      if (y[i] >= height+radius || y[i] <= -radius) {
         ay[i] = 0;
         vy[i] = 0;
      }
      //De Jong Attractor:
      //xt+1 = sin(a * yt) - cos(b * xt)
      //yt+1 = sin(c * xt) - cos(d * yt)
      if(d > 1  && d < max(width, height)) {
        ax[i] = 2*sin((mouseX - x[i])/(d*num));
        ay[i] = 3*sin((mouseY - y[i])/(d*num));
      } 
    vx[i] += ax[i];
    vy[i] += ay[i];
    x[i] += vx[i];
    y[i] += vy[i];
    col[i] += 10*i/num;
    fill(col[i],100,100);
    ellipse(x[i],y[i],radius,radius);
    if (col[i]>255){
      col[i] = 0;
    }
    else if(frameCount % 150 == 0) {
      col[i] += inc;
    }
  }  
}