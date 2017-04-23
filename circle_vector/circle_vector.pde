int NUM = 100;
float a = 0 ;
float r = 100;
float t = 100;
void setup() {
  size(300,400);
  frameRate(10);
}
void draw() {
  translate(width/2,height/2);

  background(255);
 
 beginShape();
 // a = 0;
  for (int i = 0 ; i < NUM ; i ++) {
    float x = r * cos(a);
    float y = r * sin(a);
    a =  a + TWO_PI/NUM;
    t = t+ 0.1; //intensidade do ruido 
     float n = noise(t);
     n = map(n,0,1,100,100+50);
    r = n;
    vertex(x,y);  
  }
endShape(CLOSE);

}
