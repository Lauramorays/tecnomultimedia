/*
Univercidad Nacionacal De La Plata 
 Diseño Multimedial 
 Tecnologia Multimedial 1
 Comisión 1
 Prof. Jose Luis Bugiolachi
 Alumna Laura Morays 
 Legajo: 88223/0
 */

void setup() {
  size(500, 500);
  background(255, 132, 54);
  //colorMode(HSB);
}
void draw() {

println("el mause x "+ mouseX);
println("el mouse y "+ mouseY);

  fill(113, 222, 242);//cielo
  rect(0, 0, 500, 250);
  fill(0, 0, 255);
  noStroke();
  fill(255, 132, 54); //arena
  rect(0, 250, 500, 250);
  fill(0, 0, 255);//mar
  rect(0, 265, 500, 100);

  pushStyle();
  fill(162, 154, 154);
  stroke(59, 54, 54);
  rect(200, 200, 40, 50);//Cuello
  rect(180, 150, 80, 80);//cabeza 
  fill(255, 255, 255);
  ellipse(226, 217, 22, 12);//BOCs

  line(216, 217, 236, 217);
  fill(66, 67, 67);
  triangle(218, 207, 225, 190, 280, 207);//nariz
  fill(47, 85, 134);
  rect(112, 258, 216, 100);//brazos
  fill(162, 154, 154);
  circle(136, 360, 50);//manos
  circle(310, 360, 50);
  
  
  fill(255,0,0);
  quad(154,388,168,250,271,250,287,387);
  fill(47, 85, 134);
  rect(154, 388,132,50);
  
  fill(0);
  circle(204, 172, 10);//OJOS
  circle(248, 172, 10);
  fill(66, 67, 67);
  ellipse(255, 430, 60, 70);//pie izierdo
  ellipse(185, 430, 60, 70);//pie derecho

  line(218, 150, 190, 120);//pelo
  line(218, 150, 216, 110);
  line(218, 150, 241, 114);
  popStyle();

  pushStyle();
  fill(174, 99, 18);
  rect(400, 330, 35, 120);
  fill(35, 175, 18);
  triangle(360, 340, 418, 160, 480, 340);
  popStyle();

  pushStyle();
  fill(10, 170, 240);
  noStroke();
  ellipse(50, 50, 150, 45);
  ellipse(150, 40, 150, 65);
  ellipse(250, 50, 150, 75);
  ellipse(370, 60, 70, 45);
  ellipse(500, 50, 150, 55);
  popStyle();
  
  pushStyle();
  fill(255, 250, 82);
  ellipse(300, 50, 100, 100);//Sol */
  popStyle();
}
