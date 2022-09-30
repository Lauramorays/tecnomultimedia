class Fondo {
  int vida;
  float desp;
  PImage arbol;
  PImage [] corazon =new PImage [4];
  Fondo() {
    arbol=loadImage("arbol.jpg");
    vida = 3;

    for (int i=0; i<4; i++) {
      corazon[i]=loadImage("cora" +i+".png");
    }
  }
  void dibujarFondo() {
    image(arbol, 0, 0, width, height);
    vida0();
  }

  void vida0() {

    desp+=10;
    if (desp<500) {
      image(corazon[0], 10, 5, 220, 220);
    } 
    if (desp >= 500 && desp <1000) {
      image(corazon[1], 10, 5, 220, 220);
    }
    if (desp >= 1000 && desp <=1500) {
      image(corazon[2], 10, 5, 220, 220);
    }
    if (desp > 1500  ) {
      image(corazon[3], 10, 5, 220, 220);
      desp =0;
    }


    println(desp);
  }
}
