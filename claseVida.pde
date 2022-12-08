class Vida {
  PImage [] cora = new PImage [3];
  int pV;

  Vida() {
    for (int i=0; i<cora.length; i++) {
      cora[i]=loadImage("C" +i+".png");
    }
  }

  void dibujarCora(int pV) {
    this.pV=pV;
    for (int i=0; i<cora.length; i++) {
      if (pV==0) {
        image(cora[2], 10, 20, 350, 240);
      } else if (pV==1) {
        image(cora[1], 10, 20, 350, 240);
      } else if (pV==2) {
        image(cora[0], 10, 20, 350, 240);
      }
    }
  }
}
