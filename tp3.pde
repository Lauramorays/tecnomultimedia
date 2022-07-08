/*
Tecnologia Multimedial 1
 Comisión 1
 Prof. Jose Luis Bugiolachi
 Trabajo Práctico N°3
 Alumna Laura Morays 
 Legajo: 88223/0
Video 
 https://youtu.be/JwmoFozHdxY
 */
PFont font;
int p = 0;
PImage [] man =new PImage [2];
PImage [] corazon =new PImage [4];
PImage cana, regresar, cruz, arbol;
float moCanaX, moCanaY, despMx, despMy;
int estado, punto, vida;
boolean pCount = true;
String [] textos = {"Jugar", "Reglas", 
  "Reglas del Juego \n \n  Mover con el mouse \n El jugador tiene que atrapar la \n  mayor cantidad de manzanas posibles\n  para poder acumular puntos\n Pierde vida si no la atrapa",
  "Ganaste", "Puntuación ", "Punto : ",  "Te falta mejorar", "Mucho mejor" ,"Eres Muy bueno", "Eres Insuperable"};
void setup() {
  size(600, 500);
  vida=3;
  font= loadFont("BerlinSansFB-Bold-48.vlw");//agregar fuente 
  textFont(font, 25);
  cana=loadImage("cana.png");
  cruz=loadImage("cruz.png");
  arbol=loadImage("arbol.jpg");
  regresar=loadImage("regresar.png");
  for (int i=0; i<2; i++) {
    man[i]=loadImage("man" +i+".png");
  }
  for (int i=0; i<4; i++) {
    corazon[i]=loadImage("cora" +i+".png");
  }
}
void draw() {  
    background(18,180,17);
  if (despMy > height) {
    despMy= 0;   
    despMx = int(random(width - 5)); 
    pCount = true;
  }

  if (estado==0) {    /////INICIO    
    image(man[0], 80, 150, 70, 70);
    image(man[1], 500, 100, 70, 70);
    image(cana, 100, 350, 190, 170);
    fill(5, 255, 5);
    rect(150, 100, 300, 90);//Jugar
    
    fondo(textos[0], 300, 150, 50 );
    fill(5, 255, 5);
    rect(150, 200, 300, 90);//Intruciones
    fondo(textos[1], 300, 250, 40 );
  } else if (estado==1) { ////////JUGANDO
    image(arbol, 0, 0, width, height);
    despMy+=2;
    moCanaX = mouseX;
    moCanaY = height-100;
    fondo(textos[5]+p, 46, 45, 18 );
    velocidad();
    vida0();
    
    if  (despMy>500) {
      vida -=1;
      
      image(corazon[1], 10, 5, 200, 200);
       pCount = true;
      
    }
    image(man[0], despMx, despMy, 50, 50);
    fill(10,180,10);
    rect(0, 480, 600, 20);
    image(cana, moCanaX, moCanaY, 100, 110);

    if (despMy +10 >moCanaY && despMy -10< moCanaY+20) {
      if (despMx  +10 >moCanaX && despMx-10<moCanaX +20) {
        despMx =random(0, 600);
        despMy=0;
        pCount = true;
        image(man[0], despMx, despMy, 50, 50);

        if (pCount) p = p + 1;
        pCount = false;
      }
    }

    if (despMy >=height) {
      despMx =random(0, 600);
      image(man[0], despMx, despMy, 50, 50);
    }
  } else if (estado==2) {    /////////Reglas del juego
    fondo(textos[2], 300, 100, 30 );
    fill(150, 60, 55);
    rect(555, 450, 50, 50);
    image(cruz, 562, 457, 40, 30);

    
  } else if (estado==3) {                 ////RESULTADO
   puntuacion();
    fondo(textos[4]+p, width/2, 300, 50 );//Puntuación
    formas();
    image(regresar, 508, 457, 40, 30);
    image(cruz, 562, 457, 40, 30);
    image(corazon[3], 200,150 , 500, 500);
    
  }
}

void fondo(String texto, int px, int py, int tam) {
  textSize(tam);
  textAlign(CENTER);
  fill(255, 0, 0);
  text(texto, px, py);
}
 
void mousePressed() {
  if (mouseX>150 && mouseX <450 && mouseY > 100 && mouseY< 190) { // al precionar jugar 
    estado=1;
   
  }
  if (mouseX>150 && mouseX <450 && mouseY > 200 && mouseY< 290) { //al precionar instruciones
    estado=2;
  }
  if (mouseX>500 && mouseX <550 && mouseY > 450 && mouseY< 500) {//reiniciar
    estado=1;
    vida=3;
    p=0;
  }
  if (mouseX>555 && mouseX <600 && mouseY > 450 && mouseY< 500) {//ir a inicio
    estado=0;
    vida=3;
    p=0;
  }
}
