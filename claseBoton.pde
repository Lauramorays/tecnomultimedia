class Boton {
  int bx, by, alto, ancho, actual, proxima;
  Boton (int bx, int by,  int alto,int ancho) {
    this.bx=bx;
    this.by=by;
    this.ancho=ancho;
    this.alto=alto;
  }
  void dibujarB(int a, int p){
    this.actual=a;
    this.proxima=p;
    fill (235,0,23);
    rect(bx,by,alto,ancho);
    
  }
  boolean  bPresionado(int bx, int by,int alto, int ancho){
    this.bx=bx;
    this.by=by;
    this.ancho=ancho;
    this.alto=alto;
    boolean presionado= mouseX >bx && mouseX <bx+alto && mouseY>by && mouseY< by+ancho==true;
    return presionado;
  
  }
}
