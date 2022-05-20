//Alumna: Laura Morays
//Legajo 88223/0
//Trabajo Practico Nº1
//Profesor: José Luis Bugiolachi
//Comision Nº1


PFont font;
PImage p1, p2, p3, p4, f1, f2, f3, f4, logo;
int escenario,tam,posx, posy;
float desp;
color text;
int px, py;
void setup() {
  background(0);
  size(500, 500);//tamaño de fondo

  logo= loadImage("logo.png");
  f1= loadImage("f1.jpg");//incertar imagen
  f2= loadImage("f2.jpeg");
  f3= loadImage("f3.JPG");
  f4= loadImage("f4.png");
 

  p1= loadImage("p1.png");
  p2= loadImage("p2.png");
  p3= loadImage("p3.png");
  p4= loadImage("p4.png");
  font= loadFont("AdobeDevanagari-BoldItalic-48.vlw");//agregar fuente 
  textFont(font, 25);
  escenario=0;
  desp=600;
  tam=0;
  px = width/2;
  py = height/2;
}

void draw() {
  //Titulo
  if (escenario ==0) {
    image(f1, 0, 0, width, height);
    image(logo, 250, height/2, tam, tam);
    desp= desp-2;
    tam++;
    
    if (desp <250) {
      escenario=1;
      desp=400;
      tam=0;
    }

    //Personajes principales
  } else if (escenario == 1 ) {
    image(f2, 0, 0, width, height);
    desp=desp-5;
   
     image(p1,0,0 ,width/2, height/2);
      fill(0);
      textSize(15);
      text("Tanjiro Kamado", 10, 220);
      image(p2, 250,0,width/2, height/2);
      fill(0);
       textSize(15);
      text("Nezuko Kamado", 290,220, tam);
   
      //Zenitsu Agatsuma
      image(p3, 0, 250,width/2, height/2 );
      fill(255,0,0);
      textSize(15);
      text("Zenitsu Agatsuma", 10,450);

  //Inosuke Hashibira
      image(p4, 250, 250,width/2, height/2);
      fill(255,0,0);
      textSize(15);
      text("Inosuke Hashibira", 284,450);
   
   
    if (desp <-10) {
      escenario=2;
      desp=600;
    }} 


    //Personanjes Secundarios
  else if (escenario == 2 ) {
    image(f4, 0, 0, width, height);
    textSize(15);
    fill(255);
    text("Personajes Secundarios  \n\nGenya Shinazugawa \nKanao Tsuyuri\nPilar Agua Giyu Tomioka \nPilar Amor Mitsuri Kanroji \nPilar Serpiente Obanai Iguro \nPilar Viento Sanemi Shinazugawa \nPilar Roca Gyomei Himejima\nPilar Sonido Tengen Uzui \nPilar Niebla Muichiro Tokito \nPilar Insecto Shinobu Kocho\nPilar de Fuego Kyojuro Rengoku \n \n ", 10, desp);
    desp= desp-2;
    if (desp <-506) {
      escenario=3;
      desp=700;
    }

    //Director
  } else if (escenario == 3 ) {
    image(f3, 0, 0, width, height);
    fill(255);
    textSize(15);
    text("Escrita e ilustrada: \n Koyoharu Gotoge \n \nDirector\n Haruo Sotozaki \n\nProducida por: \n Hikaru Kondo\n Akifumi Fujio\n Masanori Miyake\n Yuma Takahashi \n\nGuion:\n Estudio Ufotable\n\nMúsica por:\n Yuki Kajiura \n Go Shiina\n\nGénero\n Acción\n Aventura \n Drama\n Fantasía oscura \n Histórico\n Sobrenatural\n ", 10, desp);

    desp= desp-2;
    if (desp <-700) {
      escenario=4;
      
    }

  
  } else if (escenario == 4 ) {
   image(f1, 0, 0, width, height);
   image(f1, width/4, height/4, width/2, height/2);
   textSize(20);
   fill(random(255), 23, 109);
   text("REINICIAR",width/3, 396);

  }
  
}
void mousePressed() {
  if (mouseX>122 && mouseX <371 && mouseY > 124 && mouseY< 378) {
     escenario=0;
      desp=600;
      tam=0;
  }
  
}
