class Principal {
  Manzana man;
  Canasta cana;
  Fondo f;


  Principal() {
    man= new Manzana();
    cana = new  Canasta();
    f = new Fondo();
  }

  void dibujar () {
    f.dibujarFondo();
    man.dibujarMan();
    cana.dibujarCana();
   
  }
}
