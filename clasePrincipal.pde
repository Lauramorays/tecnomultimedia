class Principal {
  //------------------------------OTRAS CLASES
  Fondo f;
  Boton bA, bB, bC, bD;
  Manzana man;
  Canasta cana;
  Vida v;
  //-----------------------------ARREGLO DE MAN
  Manzana [] m = new Manzana [2];
  Manzana [] mm = new Manzana [2];

  int  pantalla, vV;
  int vP=-2;//-----------------------Puntos

  Principal() { //------------------------------------INICIO DE CONTRU
    f = new Fondo();
    man= new Manzana();
    cana = new  Canasta();
    v= new Vida();
    bA= new Boton (150, 150, 300, 90); //------Boton Jugar
    bB = new Boton(150, 250, 300, 90);//-------Botaon Indicaciones
    bC= new Boton (508, 457, 40, 30); //
    bD= new Boton (562, 457, 40, 30);

    pantalla=0;
    vV=v.pV;  //----------------------IGUALAR 
    vV=-2;   // -------Vidas

    for (int i = 0; i< m.length; i++ ) {
      m[i]= new Manzana();
    }
    for (int i = 0; i< mm.length; i++ ) {
      mm[i]= new Manzana();
    }
  }             //------------------------------------FINN   DE CONTRU




  void dibujarF() {
    f.dibujarFondo(pantalla);

    //------------------------------------------------PANTALLA DE INICIO

    if (pantalla ==0) {
      bA.dibujarB(0, 1, "JUGAR" );       //------ Bonton jugar
      bB.dibujarB(0, 3, "INDICACIONES");//--------Boton Indicaciones
    }
    //------------------------------------------------PANTALLA DE JUEGO
    if (pantalla ==1) {
      colisionMC();
      colisionMMC();
      v.dibujarCora(vV);
      cambiarPantalla();

      for (int i = 0; i< m.length; i++ ) {
        m[i].dibujarMan();
        m[i].moverMan();
      }
      for (int i = 0; i< mm.length; i++ ) {
        mm[i].dibujarMan();
        mm[i].moverManM();
      }
      cana.dibujarCana();

      fill(0);
      textSize (20);
      text ("PUNTO  "  +vP, 80, 55);
    }

    //---------------------------------- PANTALLA  DE Puntuacion 
    if (pantalla ==2) {//Puntuacion
      vV=0;
      bD.dibujarB(2, 0, "");    //-----ir JUGAR
      bC.dibujarB(2, 1, "");    //-----ir INICIO
      f.dVolver(508, 457, 40, 30);
      f.dSalir(562, 457, 40, 30);
      fill(0);
      textSize (28);
      text (" "+vP, 250, 75);
    }
    //---------------------------------PANTALLA DE LAS INDICACIONES 
    if (pantalla ==3) {//Indicaciones
      bD.dibujarB(3, 0, "VOLVER");//Inicio
      f.dVolver(562, 457, 40, 30);
    }
  }


  void colisionMC() {  //------------------------------------Colision de Man y Cana
    for (int i=0; i<m.length; i++) {
      float distancia = dist(cana.moCanaX, cana.moCanaY, m[i].despMx, m[i].despMy);
      if (distancia<m[i].tam-20+cana.tam+20) {
        m[i].choqueMan();
        m[i].moverMan();
        vP++;
        atrapa.amp(0.1);
        atrapa.play();
      }
      if  (m[i].despMy>height) {
        m[i].choqueMan();
        m[i].moverMan();
      }
    }
  }
  void colisionMMC() {  //------------------------------------Colision de Man Mala y Cana
    for (int i=0; i<mm.length; i++) {
      float distan = dist(cana.moCanaX, cana.moCanaY, mm[i].despMMx, mm[i].despMMy);
      if (distan<mm[i].tam-8+cana.tam+20) {
        cambiarPantalla();

        mm[i].choqueManM();
        mm[i].moverManM();
        v.dibujarCora(vV);
        vV++;
       malo.amp(0.1);
        malo.play();
      }
      if  (mm[i].despMMy>height) {
        mm[i].choqueManM();
        mm[i].moverManM();
      }
    }
  }
  void cambiarPantalla() {                                  /////CAMBIAR PANTALLA 
    if ( vV==3) {
      pantalla=2;
    }
  }


  void detectarB() { //-----------------------------------------------------BOTONES POsiciones 
    if (bA.bPresionado(150, 150, 300, 90)&& pantalla==bA.actual) {
      pantalla=bA.proxima;
    }
    if (bB.bPresionado(150, 250, 300, 90)&& pantalla==bB.actual) {//------Boton Indi 
      pantalla=bB.proxima;
    }
    if (bC.bPresionado(508, 457, 40, 30)&& pantalla==bD.actual) { //-----------Regresar
      pantalla=bC.proxima;
      vP=0;
    }
    if (bD.bPresionado(562, 457, 40, 30)&& pantalla==bD.actual) {
      pantalla=bD.proxima;
      vP=0;
    }
  }
}
