/*
Tecnologia Multimedial 1
 Comisión 1
 Prof. Jose Luis Bugiolachi
 Trabajo Práctico N°5
 Alumna Laura Morays 
 Legajo: 88223/0
 
 video 
 https://youtu.be/V8Cx4NcnsXw
 */

import processing.sound.*;
SoundFile soniFondo, atrapa, malo;
Principal p;

void setup() {
  size(600, 500);
  p = new Principal();
  atrapa= new SoundFile(this, "atrapa.mp3"); 
  malo= new SoundFile(this, "malo.mp3"); 
  soniFondo = new SoundFile(this, "fondo.mp3");
  soniFondo.amp(0.01);
  soniFondo.loop();
}
void draw () {
  p.dibujarF();
}
void mousePressed() {
  p.detectarB();
}
