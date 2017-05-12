void circle() {
beginShape();
  for (int i = 0 ; i < NUM ; i ++) {
    float x = r * cos(a);
    float y = r * sin(a);
    a =  a + TWO_PI/NUM;
    t = t+ 0.1; //intensidade do ruido 
    float n = noise(t);
    n = map(n,0,1,100,100+50);
    if (active == true) {
      r = n;
     }
    vertex(x,y);  
  }
  endShape(CLOSE);
}
