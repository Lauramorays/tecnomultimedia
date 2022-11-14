class Vida {
  PImage [] corazon = new PImage [3];
  int cora=3;

  Vida() {
 
    for (int i=0; i<3; i++) {
      corazon[i]=loadImage("cora" +i+".png");
    }
  }
  void restarCora() {
    cora-=1;
  }


  void dibujarCora() {
    if (cora==3) {
      image(corazon[0], 10, 5, 220, 220);
    } 
    if (cora==2) {
      image(corazon[1], 10, 5, 220, 220);
    }
    if (cora==1) {
      image(corazon[2], 10, 5, 220, 220);
    }
    if (cora==0) {
    }
  }
}
