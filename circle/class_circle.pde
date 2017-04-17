class circles {
  int intencive ;
  int cor;
    circles ( int i , int c) {
      cor = c;
      intencive = i;
    }
  void circlecreator() {
    for (int i = 0 ; i < NUM    ; i ++) {
      float x = r * cos(a);
      float y = r * sin(a);
      r = var[i] + i;
      a = a + TWO_PI/NUM;
      fill(cor);
      ellipse(x,y,20,20);  
    }
  }
}
