class Bullet{
float x, y, d;
int speed;
PVector vectorPos;
PVector vectorVeloz;

Bullet(float posX, float posY){
  x=posX;
  y=posY;
  d=10;
  speed= 5;
  vectorPos= new PVector(x,y);
  vectorVeloz= new PVector(0,-speed);
}
void dibujar(){
 circle(vectorPos.x, vectorPos.y, d);  
}
void mover() {
    vectorPos.add(vectorVeloz);
    colisionarConParedes();
  }
  
void colisionarConParedes() {
    if (vectorPos.x <= 0 || vectorPos.x >= width) {
      vectorVeloz.x *= -1; 
      println("Producto punto: "+(vectorVeloz.x * 0 + vectorVeloz.y * -1));
    }
    if (vectorPos.y <= 0 || vectorPos.y >= height) {
      vectorVeloz.y *= -1; 
       println("Producto punto: "+(vectorVeloz.x * 0 + vectorVeloz.y * -1));
    }
  }
}
