class Manzana {
  PImage [] man =new PImage [1];
  float despMx, despMy;

  Manzana() {
    for (int i=0; i<man.length; i++) {
      man[i]=loadImage("man" +i+".png");
    }
    despMx= random(width);
      despMy= random(-200, -50);
  }


  void tipoM() {
    for (int i = 0; i< man.length; i++ ) {
      if (i%2==0) {
        image(man[0], despMx, despMy, 50, 50);
      } else {
        image(man[1], despMx, despMy, 50, 50);
      }
    }
  }

  void dibujarMan() {
    tipoM();
    despMy+=4;
    despMan();
  }

  void despMan() {
    if (despMy > height) {
      despMy= 0;   
      despMx = int(random(width - 50));
    }
  }
}
