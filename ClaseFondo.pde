class Fondo {
  int  contador;
  float desp;
  PImage arbol, regresar, cruz;

  Manzana man;
  Canasta cana;
  Vida v;

  Fondo() {
    man= new Manzana();
    cana = new  Canasta();
    v= new Vida();
    contador=3;
    arbol=loadImage("arbol.jpg");
    cruz=loadImage("cruz.png");
    regresar=loadImage("regresar.png");
  }

  void dibujarFondo() {
    pantallas();
    CheckearColisiones();
  }

  void pantallas() {
    if (contador==0) {  /////////////////////INICIO 
      cambiarPantalla();
      background(10, 255, 100);   
      fill(5, 255, 5);
      rect(150, 100, 300, 90);    
      fill(162, 235, 180);
      textSize(30);
      textAlign(CENTER);
      text("Jugar", 300, 160);

      fill(5, 255, 5);//color del recta
      rect(150, 200, 300, 90); 
      fill(162, 235, 180);
      textSize(30);
      textAlign(CENTER);
      text("Intruciones", 300, 260);
    } else if  (contador==1) {    ////////////////////////// JUEGO 
      image(arbol, 0, 0, width, height);
      man.dibujarMan();
      cana.dibujarCana();
      v.dibujarCora();
    } else if (contador==2) {   ////////////// /////INTRUCIONES 
      cambiarPantalla();
      background(255, 255, 92);
      textSize(25);
      textAlign(CENTER);
      text("CREDITOS", width/2, height/2);
    } else if (contador==3) {   ////////////// ///// CREDITOS  
      cambiarPantalla();
      background(255, 255, 92);
      textSize(25);
      textAlign(CENTER);
      text("CREDITOS", width/2, height/2);
      image(regresar, 508, 457, 40, 30);
      image(cruz, 562, 457, 40, 30);
    }
  }//final de pan

  void CheckearColisiones() {
    float cx = cana.moCanaX - 55;
    float cy = cana.moCanaY - 55;
    float mx = man.despMx - 25;
    float my = man.despMy - 25;
    if (mx>cx && mx < cx + 110 && my > cy && my < cy + 110) {
      man.despMy= 0;  
      man.despMx = int(random(width - 50));
    } else if (man.despMy >height) {
      v.restarCora();
    }
  }
  void cambiarPantalla() {
    if (mousePressed) {
      if (mouseX>150 && mouseX <450 && mouseY > 100 && mouseY< 190) { // al precionar jugar 
        contador=1;
      }
      if (mouseX>150 && mouseX <450 && mouseY > 200 && mouseY< 290) { //al precionar instruciones
        contador=2;
      }
      if (mouseX>500 && mouseX <550 && mouseY > 450 && mouseY< 500) {//reiniciar
        contador=1;
      }
      if (mouseX>555 && mouseX <600 && mouseY > 450 && mouseY< 500) {//ir a inicio
        contador=0;
      }
    }
  }
}
