float a = 0;
float r = 100;
int NUM = 18;
float dx, dy;
float[] var = new float[NUM];
circles um = new circles(2, 100);

void setup () {
  size(400,600);
  noStroke();
  //circles umc = new circles(2, 100);
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
  //circlebase();
  um.circlecreator();
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






