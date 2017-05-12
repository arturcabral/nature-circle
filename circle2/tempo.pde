final int ESPERA_TEMPO = 500;
int startTemp;
final int varEstatica = var;
void tempo() {
  if ( active == true ) {
   
    if (tempodecor()) {
      println(var);
      startTemp = millis();
      var = var - varEstatica /vel ; 
      if (var < 0 ) {
        active = false;
        var = varEstatica;
      }
    }
  }
}
boolean tempodecor() {
  return millis() - startTemp > ESPERA_TEMPO;
}