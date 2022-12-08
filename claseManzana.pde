class Manzana {
  PImage [] apple =new PImage [1];
  PImage [] appleM =new PImage [1];
  float despMx, despMy, despMMx, despMMy, tam;
  boolean choque, choqueM;

  Manzana() {
    for (int i=0; i<apple.length; i++) {
      apple[i]=loadImage("man" +i+".png");
    }
    for (int i=0; i<appleM.length; i++) {
      appleM[i]=loadImage("manM" +i+".png");
    }
    choque= false;
    choqueM= false;
    tam=60;
  }


  void dibujarMan() {
    for (int i = 0; i< apple.length; i++ ) {
      image(apple[i], despMx, despMy, tam+10, tam);
    }
    for (int i = 0; i< appleM.length; i++ ) {
      image(appleM[i], despMMx, despMMy, tam, tam+10);
    }
    despMy+=4;
    despMMy+=4;
  }

  void moverMan() {//------------------------Reigreso de las manzanas
    if (despMx>height || choque) {
      despMy= random(-110, -50); 
      despMx = int(random(width - 50));
      choque= false;
    }
  }
  void moverManM() {//------------------------Reigreso de las manzana Mala
    if (despMMx>height || choqueM) {
      despMMy= random(-110, -50); 
      despMMx = int(random(width - 50));
      choqueM= false;
    }
  }
  void choqueMan() {
    choque=true;
  }
  void choqueManM() {
    choqueM=true;
  }
}
