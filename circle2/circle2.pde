boolean active = false;
float a = 0;
int NUM = 120;
float r = 100;
float t =0;
int var = 50;
int vel = 40 ;
circles um = new circles(255,255,255);
circles dois = new circles(20,177,252);
circles tres = new circles(250,25,67);

void setup() {
  size(400,600);
  frameRate(20);
  noStroke();
}
void pre() {
   if (keyPressed == true) {
     active = !active;
   }
}
void draw() {
  pre();
  tempo();
  translate(width/2,height/2);
  background(0);
  tres.circlecreator();
  dois.circlecreator();
  um.circlecreator();
}