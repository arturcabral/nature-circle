float a = 0;
float r = 100;
int NUM = 18;
void setup () {
  size(400,600);
  noStroke();
}

void draw() {
  background(0);
  fill(255);
  translate(width/2,height/2);
  circlebase();
}

void circlebase() {
  for (int i = 0 ; i < NUM +1   ; i ++) {
    float x = r * cos(a);
    float y = r * sin(a);
    r = random(100,105);
    a = a + TWO_PI/NUM;
    ellipse(x,y,20,20);  
  }
}

