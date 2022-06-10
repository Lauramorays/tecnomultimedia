void circulo() {
  pushStyle();
  background(255);
  //Hacer que los circulos no se superpongan y establecer el tamaño de sus lineas
  noFill();
  strokeWeight(10);
  for (int i=15; i<1000; i+=40) {
    float tam = map(i, height, 800, mouseX*2, height);
    ellipse(width/2, height/2, tam, tam);
  }
  popStyle();
}
