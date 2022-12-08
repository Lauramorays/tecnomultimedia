class Canasta {
  PImage cana;
  float moCanaX, moCanaY, tam ;

  Canasta() {
    cana=loadImage("cana.png");
  }
  void moverCanasta() {
    moCanaY = height-75;
    if (keyPressed) {
      if (keyCode==LEFT && moCanaX>=0) {
        moCanaX -= 10;
      }
      if (keyCode==RIGHT && moCanaX<width-100) {
        moCanaX+= 10;
      }
    }
  }

  void dibujarCana() {
    image(cana, moCanaX, moCanaY, 110, 100);
    moverCanasta();
  }
}
