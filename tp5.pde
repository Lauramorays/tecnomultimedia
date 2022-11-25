/*
Tecnologia Multimedial 1
 Comisión 1
 Prof. Jose Luis Bugiolachi
 Trabajo Práctico N°5
 Alumna Laura Morays 
 Legajo: 88223/0
 */

import processing.sound.*;
SoundFile soniFondo, atrapa;
Principal p;

void setup() {
  size(600, 500);
  p = new Principal();
  //atrapa= new SoundFile(this, "perdida.mp3"); 
  //soniFondo = new SoundFile(this,"musicaFondo.mp3");
  //soniFondo.amp(0.5);
 //soniFondo.loop();
 
}
void draw () {
  p.dibujarF();
}
void mousePressed(){
p.detectarB();
}
