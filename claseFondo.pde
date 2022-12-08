
class Fondo {
  int nI;
  PImage []fondos = new PImage [5];
  PImage cruz, volver;
  Fondo() {
    cruz=loadImage("cruz.png");
    volver=loadImage("regresar.png");
    for (int i=0; i <fondos.length; i++ ) {
      fondos [i]=loadImage("fondos"+i+".jpg");
    }
  }
  void dSalir (int x, int y, int alto, int ancho ) {
    image (cruz, x, y, alto, ancho);
  }
  void dVolver (int x, int y, int alto, int ancho ) {
    image (volver, x, y, alto, ancho);
  }
  void dibujarFondo(int nI) {
    this.nI=nI;
    image (fondos[nI], 0, 0);
  }
}
