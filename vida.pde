void vida0() {
  if (vida==3) {
    image(corazon[0], 10, 5, 220, 220);
  } 
  if (vida==2) {
    image(corazon[1], 10, 5, 220, 220);
  }
  if (vida==1) {
    image(corazon[2], 10, 5, 220, 220);
  }
  if (vida==0) {
    estado=3;
  }
}

void velocidad() {
  if (p>=3 &&p<=6) {
    despMy+=4;
  }
  if (p>=7 &&p<=15) {
    despMy+=6;
  }
  if (p>=16 &&p<=25) {
    despMy+=8;
  }
  if (p>25 ) {
    despMy+=9;
  }
}



void puntuacion() {
  if (p<=5 ) {
    background(200, 10, 10);
    fondo(textos[6], 300, 150, 50 );
    ;
    image(man[0], 80, 150, 70, 70);
    image(man[1], 500, 100, 70, 70);
    image(cana, 100, 350, 190, 170);
  }
  if (p>5 && p<=10 ) {
    background(90, 90, 20);
    fondo(textos[7], 300, 150, 50 );
    ;
    image(man[0], 80, 150, 70, 70);
    image(man[1], 500, 100, 70, 70);
    image(cana, 100, 350, 190, 170);
  }
  if (p>10 &&p <=30) {
    background(90, 200, 20);
    fondo(textos[8], 300, 150, 50 );
    ;
    image(man[0], 80, 150, 70, 70);
    image(man[1], 500, 100, 70, 70);
    image(cana, 100, 350, 190, 170);
  }
  if (p>30) {
    background(40, 255, 20);
    fondo(textos[9], 300, 150, 50 );
    ;
    image(man[0], 80, 150, 70, 70);
    image(man[1], 500, 100, 70, 70);
    image(cana, 100, 350, 190, 170);
  }
}
