class Principal {
  Fondo f;
  Boton bA, bB, bC, bD;
  int  pantalla, contador;
  Manzana man;
  Canasta cana;
  Vida v;

  Manzana [] m = new Manzana [2];
  Principal() {
    f = new Fondo();
    man= new Manzana();
    cana = new  Canasta();
    v= new Vida();
    pantalla=0;
    contador=0;
    bA= new Boton (150, 100, 300, 90);
    bB = new Boton(150, 200, 300, 90);//Centro
    bC= new Boton (508, 457, 40, 30); //creditos
    bD= new Boton (562, 457, 40, 30);
    for (int i = 0; i< m.length; i++ ) {
      if (i%2==0) {
        m[0]= new Manzana();
        
      } else {
        m[1]= new Manzana();
        
      }
  }
    
  }
  void dibujarF() {
    CheckearColisiones();
    f.dibujarFondo(pantalla);

    if (pantalla ==0) {//Inicio
      cambiarPantalla();
      bA.dibujarB(0, 1);//jugar
      bB.dibujarB(0, 3);//Indi
    }
    if (pantalla ==1) {//Juego
      cambiarPantalla();
      for (int i = 0; i< m.length; i++ ) {
        m[i].dibujarMan();
      }
      cana.dibujarCana();
      v.dibujarCora();
    }
    if (pantalla ==2) {//Puntuacion
      cambiarPantalla();
      bD.dibujarB(2, 0);//ir inicio
      bC.dibujarB(2, 1);
    }
    if (pantalla ==3) {//Indicaciones
      bD.dibujarB(3, 0);//Inicio
    }
    if (pantalla ==4) {// Creditos
      cambiarPantalla();
      bD.dibujarB(2, 3);
      bC.dibujarB(2, 3);
    }
  }

  void detectarB() {
    if (bA.bPresionado(150, 100, 300, 90)&& pantalla==bA.actual) {
      pantalla=bA.proxima;
    }
    if (bB.bPresionado(150, 200, 300, 90)&& pantalla==bB.actual) {
      pantalla=bB.proxima;
    }
    if (bC.bPresionado(508, 457, 40, 30)&& pantalla==bD.actual) {
      pantalla=bC.proxima;
    }
    if (bD.bPresionado(562, 457, 40, 30)&& pantalla==bD.actual) {
      pantalla=bD.proxima;
    }
  }
  void CheckearColisiones() {                              ////COLISIONES
    float cx = cana.moCanaX - 55;
    float cy = cana.moCanaY - 55;
    float mx = man.despMx - 25;
    float my = man.despMy - 25;
    if (mx>cx && mx < cx + 110 && my > cy && my < cy + 110) {
      man.despMy= 0;  
      man.despMx = int(random(width - 50));
    }
  }
  void cambiarPantalla() {                                  /////CAMBIAR PANTALLA 
    if ( v.cora==0) {
      pantalla=2;
      contador=3;
      v.cora=3;
    }
  }
}
