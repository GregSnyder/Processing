//Fork and reinterpretation of https://twitter.com/incre_ment/status/1439261938601500677
void setup(){
  size(600,600);
  frameRate(1);
}
float x,y,n,i,a,b,t;
void draw(){
  t+=.01;
  clear();
  for(n=0;n<500;n++){
    for(i=0;i<500;i++){
      a=sin(1*(TAU*t+n+y))+cos(1*(TAU*t+TAU+n+x))+cos(1*(TAU*t+TAU+n+x));
      b=cos(1*(TAU*t+n+y))+sin(2*(TAU*t+TAU+n+x))+sin(3*(TAU*t+TAU+n+y));
      x=a;
      y=b;
      fill(255,50);
      noStroke();
    circle(300+150*x,300+150*y,2);
    }
  }
}
