PJ p1;
ArrayList<Bullet> balas;
int ultimaBala;
int intervalo = 5000;


void setup(){
 size(800,400); 
 p1= new PJ(width/2, height-50,50,50);
 balas = new ArrayList<Bullet>();
 ultimaBala = millis();
 
}

void draw(){
 background(4); 
 p1.dibujar();
 p1.mover();
 
 for (int i = balas.size() - 1; i >= 0; i--) {
    Bullet bala = balas.get(i);
    bala.dibujar();
    bala.mover();
       if (bala.y < 0) {
      balas.remove(i);
       }
   }
   if (millis() - ultimaBala > intervalo) {
    balas.add(new Bullet(p1.x, p1.y));
    ultimaBala = millis(); 
  }
  
  if (millis() - ultimaBala > intervalo && balas.size() < 5) {
    balas.add(new Bullet(p1.x, p1.y));
    ultimaBala = millis();
  }
  
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
