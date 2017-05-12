boolean active = false;
int NUM = 2000;
float INCREMENTO_POR_SPIN = PI/24 ;
float r = 100;
float a = 0;
float t = 100;
color from = color(83,188,224);
color to = color(192,77,124);
float nrotacao = 0;
float rotacao;
void setup() {
  size(400,600);
  frameRate(10);

}
void pre() {
   if (keyPressed == true) {
     active = !active;
   }  }
void draw() {
    float interpol = 0;
    //rotate(PI/3.0);
    int setor = NUM / 12 ;
    float primeirosValores[] =  new float [NUM / 12];    
    pre();   
    translate(width/2,height/2);
    noStroke();
    background(0);
    a = 0;
    //solução overflow
    nrotacao = nrotacao + 1 % (NUM/64)  ;
    rotate(128 * PI / NUM * nrotacao);
    for (int i = 0 ; i < NUM   ; i ++) {
      interpol = abs(cos (PI/NUM * ((i + nrotacao* 100) % NUM))); //solução overflow e rotação cores
      fill(lerpColor(from,to, interpol)); 
      float x = r * cos(a);
      float y = r * sin(a);
      a =  a + TWO_PI/NUM ;
      t = t + 0.005; //intensidade do ruido 
      float n = sin(PI/NUM*i )* noise(t);
      n = map(n,0,1,100,100+50);
      //Atribui parametrsos
      if (active == true) {
        r = n;
      }
      ellipse(x,y,3,3);  
    }
    INCREMENTO_POR_SPIN += INCREMENTO_POR_SPIN;
}
