boolean active = false;
int NUM = 100;
float a = 0 ;
float r = 100;
float t = 100;
void setup() {
  size(300,400);
  frameRate(10);
  strokeWeight(5);
  stroke(255);
  fill(0);
}
void pre() {
   if (keyPressed == true) {
     active = !active;
   }
}
void draw() {
  translate(width/2,height/2);
  pre();
  background(0);
 circle();
 

}
