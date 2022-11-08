class Canasta {
  PImage cana;
  float moCanaX, moCanaY;
  
  Canasta() {
    cana=loadImage("cana.png");
  }
  void moverCanasta() {
    moCanaX= mouseX;
    moCanaY = height-75;
  }

  void dibujarCana() {
    image(cana, moCanaX, moCanaY, 110, 100);
    moverCanasta();
  }
  
}
