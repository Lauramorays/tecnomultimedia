class Vida{
   PImage sprite;
   boolean estado;
   
   Vida(){
     estado = true;
     sprite = loadImage("corazon_lleno.png");
   }
   
   void dibujar(int x){
    image(sprite,10,10,x,220); 
   }
}
