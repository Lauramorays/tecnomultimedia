//Alumna: Laura Morays
//Legajo 88223/0
//Trabajo Practico Nº2
//Profesor: José Luis Bugiolachi
//Comision Nº1
// https://youtu.be/RTgqurvlPYU

boolean fondo=true;
void setup () {
  size (400, 400);
  background(255, 0, 0);
}

void draw() {
  if ( fondo ) {

    circulo();
  } else {
    zonas();
  }
}

void mousePressed() {
  fondo=!fondo;
}
