class Canasta {
  PImage cana;
  float moCanaX, moCanaY;
  Canasta() {
    cana=loadImage("cana.png");
  }

  void dibujarCana() {
    image(cana, moCanaX, moCanaY, 110, 100);

    moCanaX= mouseX;


    moCanaY = height-75;
  }
}
