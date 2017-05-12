//classe e construtor do circle
class circles {
  int red;
  int green;
  int blue;
    circles (int R, int G, int B) {
      red = R;
      green = G;
      blue = B;
    }
  void circlecreator() {
    a = 0; //impede do circulo rodar
    for (int i = 0 ; i < NUM ; i ++) {
     float x = r * cos(a);
     float y = r * sin(a);
     t = t+ 0.3; //intensidade do ruido 
     float n = noise(t);
     n = map(n,0,1,100,100+var);
     if (active == true) {
      r = n;
     }
     a =  a + TWO_PI/NUM;
     fill(red,green,blue);
     ellipse(x,y,5,5);  
    }
  }
}
