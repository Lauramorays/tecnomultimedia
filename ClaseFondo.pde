class Fondo {
  int vida, contador;
  float desp;
  PImage arbol;
  PImage [] corazon = new PImage [4];
  Manzana man;
  Canasta cana;
  Vida [] vidas = new Vida[3];

  Fondo() {
   man= new Manzana();
   cana = new  Canasta();
  contador=1;
  arbol=loadImage("arbol.jpg");
  vida = 3;

    for (int i=0; i<3; i++) {
  vidas[i] = new Vida();
    }
  }

  void dibujarFondo() {
  pantallas();
  CheckearColisiones();
  }
  void pantallas() {
    if (contador==0) {    /////INICIO    
      fill(5, 255, 5);
      rect(150, 100, 300, 90);    //Jugar
      fill(0);
      text("Jugar", 260, 160);
      fill(5, 255, 5);
      rect(150, 200, 300, 90);    //Intruciones
    } else if  (contador==1) {    /////juago   
      image(arbol, 0, 0, width, height);
      man.dibujarMan();
      cana.dibujarCana();
      vida0();
    } else if (contador==2) {    /////perder/creditos   
      background(255, 255, 92);
      textSize(25);
      textAlign(CENTER);
      text("Perdiste", width/2, height/2);
    }
  }//final de pan


  void vida0() {
   

 
    
    /*
     for(int i=0;i<4;i++){
      image(this.corazon[i],10,10,220+(20*i),220);if () {
      image(this.corazon[3], 10, 5, 220, 220);
      this.desp =0;
      this.contador=2;
      
    }*/
  }

  void CheckearColisiones() {
    float cx = cana.moCanaX - 55;
    float cy = cana.moCanaY - 55;
    float mx = man.despMx - 25;
    float my = man.despMy - 25;
    if (mx>cx && mx < cx + 110 && my > cy && my < cy + 110) {
      man.despMy= 0;   
      man.despMx = int(random(width - 50));
    }
  }
}
