void zonas() {
  pushStyle();
  noFill();
  strokeWeight(8);
  float tono =map(mouseX, mouseY, width, height, 255); //tono del objeto o color
  for (int i=0; i<height/3; i+=40) {
    float tam = map(i, height, 800, mouseX/1.5, height);
    if ( i%2 == 0  ) { 
      fill(tono, 0, 0);
    } else {
      fill(0);
    } 
    ellipse(width/2, height/2, tam/2, tam/2);
  }
  popStyle();
  // superior  izquierdo
  if (mouseX<width/2 && mouseY<height/2) {  
    for (int i = width/2; i>height/6; i-=15) {
      if ( i%2 == 0  ) { 
        fill(tono, 0, 0);
      } else {
        fill(0);
      } 
      ellipse(100, 100, i, i);
    }
    ////// arriba derecho
  } else  if (mouseX>width/2 && mouseY<height/2) { 
    for (int i = width/2; i>height/6; i-=15) {
      if ( i%2 == 0  ) { 
        fill(tono, 0, 0);
      } else {
        fill( 0);
      } 
      ellipse(300, 100, i, i);
    }
    // cuadrante inferior izquierdo
  } else if (mouseX<width/2 && mouseY>height/2) { 
    for (int i = width/2; i>height/6; i-=15) {
      if ( i%2 == 0  ) { 
        fill(tono, 0, 0);
      } else {
        fill( 0);
      } 
      ellipse(100, 300, i, i);
    }
  } else { 

    for (int i = width/2; i>height/6; i-=15) {
      if ( i%2 == 0  ) { 
        fill(tono, 0, 0);
      } else {
        fill(0);
      } 
      ellipse(300, 300, i, i);
    }
  }
}
