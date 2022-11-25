
class Fondo {
  int nI;
  PImage []fondos = new PImage [5];
  Fondo() {
    for (int i=0; i <fondos.length; i++ ) {
      fondos [i]=loadImage("fondos"+i+".jpg");
    }
  }
  void dibujarFondo(int nI) {
    this.nI=nI;
    image (fondos[nI], 0, 0);
  }
  
}
