class Boton {
  int bx, by, alto, ancho, actual, proxima;
  String t;
  Boton (int bx, int by, int alto, int ancho) {
    this.bx=bx;
    this.by=by;
    this.ancho=ancho;
    this.alto=alto;
  }
  void dibujarB(int a, int p, String t) {
    this.actual=a;
    this.proxima=p;
    this.t=t;
    fill (235, 0, 23);
    rect(bx, by, alto, ancho, alto/6);
    
    textSize(23);
    textAlign(CENTER,CENTER);
    fill(0);
    text(t,bx+bx,by+by/4);
  }
  boolean  bPresionado(int bx, int by, int alto, int ancho) {
    this.bx=bx;
    this.by=by;
    this.ancho=ancho;
    this.alto=alto;
    boolean presionado= mouseX >bx && mouseX <bx+alto && mouseY>by && mouseY< by+ancho==true;
    return presionado;
  }
}
