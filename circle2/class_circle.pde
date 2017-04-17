//classe e construtor do circle
class circles {
  int intencive ;
  int cor;
    circles ( int in , int c) {
      cor = c;
      intencive = in;
    }
  void circlecreator() {
    a = 0;
    for (int i = 0 ; i < NUM ; i ++) {
      
      float x = r * cos(a);
      float y = r * sin(a);
      float perlin = 1;
      r = random(100,130);
      a =  a + TWO_PI/NUM;
      fill(cor);
      ellipse(x,y,20,20);  
      

    }
}
}