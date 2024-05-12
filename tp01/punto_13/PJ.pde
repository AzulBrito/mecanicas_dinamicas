class PJ{
 int x, y, d,w;
 boolean moviendoDerecha;
 boolean moviendoIzquierda;
 int speed;
 
 PJ(int startX, int startY, int startW, int startD){
   x=startX;
   y=startY;
   w=startW;
   d=startD;
 boolean moviendoDerecha=false;
 boolean moviendoIzquierda=false;
   speed =10;
 }
 void dibujar(){
  rect(x,y,w,d); 
 }
 void mover(){
  if(moviendoIzquierda==true){
    x-=speed;
    
  }
  if (moviendoDerecha==true){
   x+=speed; 
  }
  
 }
 
}
