class Manzana {
  PImage man;
  float despMx, despMy;
  
  Manzana() {
    man=loadImage("man.png");
  }
  
  void dibujarMan() {
    despMy+=10;
    image(man, despMx, despMy, 50, 50);
    despMan();
  }
  
  void despMan() {
    if (despMy > height) {
     despMy= 0;   
      despMx = int(random(width - 50));
    }
  }
}
