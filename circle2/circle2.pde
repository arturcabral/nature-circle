float a = 0;
int NUM = 18;
float r = 100;
circles um = new circles(2, 100);
circles dois = new circles(2, 50);
circles tres = new circles(2, 200);

void setup() {
  size(400,600);
}
void draw() {
   translate(width/2,height/2);
  background(0);
   um.circlecreator();
println(a);
     

  // dois.circlecreator();
  // tres.circlecreator();

}