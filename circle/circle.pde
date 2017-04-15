float a = 0;
float r = 100;
int NUM = 18;
float dx, dy;
float[] var = new float[NUM];

void setup () {
  size(400,600);
  noStroke();
}

void update() {
    for (int i = 0 ; i < NUM   ; i ++) {
    var[i]= random(100,110);
    }
}

void draw() {
  update();
  background(0);
  fill(255);
  translate(width/2,height/2);
  circlecor1();
  circlebase();
  println(var[1]);
}

void circlebase() {
  for (int i = 0 ; i < NUM    ; i ++) {
    float x = r * cos(a);
    float y = r * sin(a);
    r = var[i];
    a = a + TWO_PI/NUM;
    fill(255);
    ellipse(x,y,20,20);  
  }
}

void circlecor1() {
  for (int i = 0 ; i < NUM    ; i ++) {
    float x = r * cos(a);
    float y = r * sin(a);
    r = var[i] + random(2,4);
    a = a + TWO_PI/NUM;
    fill(125);
    ellipse(x,y,20,20);  
  }
}


