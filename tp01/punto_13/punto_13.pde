PJ p1;

void setup(){
 size(800,400); 
 p1= new PJ(width/2, height-50,50,50);
}
void draw(){
 background(4); 
 p1.dibujar();
 p1.mover();
}

void keyPressed(){
 if(key=='a'){
   p1.moviendoDerecha=true;
 }
 if(key=='d'){
   p1.moviendoIzquierda=true;
 }
}
void keyReleased(){
  if(key=='a'){
    p1.moviendoDerecha=false;
 } 
 if(key=='d'){
    p1.moviendoIzquierda=false;
 } 
}
