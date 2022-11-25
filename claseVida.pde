class Vida {
  PImage [] corazon = new PImage [4];
  int cora=3;
  Manzana man;

  
  Vida() {

    man = new Manzana();
    for (int i=0; i<4; i++) {
      corazon[i]=loadImage("cora" +i+".png");
    }
  }

  void restarCora() {
    if (man.despMy > height) {
      cora-=1;
      man.despMy=0;
    }
  }


  void dibujarCora() {
    man.despMy+=4;
    restarCora();
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
      image(corazon[3], 10, 5, 220, 220);

  
      
     
    }
  }
}
