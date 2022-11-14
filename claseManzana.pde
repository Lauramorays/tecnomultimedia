class Manzana {
  PImage [] man =new PImage [2];
  float despMx, despMy;
  Vida v;

  Manzana() {
    v = new Vida();
    for (int i=0; i<2; i++) {
      man[i]=loadImage("man" +i+".png");
    }
  }
  
  void tipoDeMan() {
      float apple= random (2);
      if (apple >1) {
        image(man[0], despMx, despMy, 50, 50);
      } else {
        image(man[1], despMx, despMy, 50, 50);
      
    }
  }
  void dibujarMan() {
    tipoDeMan();
    despMy+=9;
    despMan();
  
  }
 
  void despMan() {
    if (despMy > height) {
      despMy= 0;   
      despMx = int(random(width - 50));
      
      v.dibujarCora();
    }
  }
}
