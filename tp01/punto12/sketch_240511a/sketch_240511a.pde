PJ pj;
Bullet bala;
Objetivo objetivo;
float direccionX, direccionY;


void setup(){
size(400,800);  
pj= new PJ();
bala= new Bullet(200,800);
objetivo= new Objetivo();
}

void draw(){
 background(200); 
 pj.dibujar();
 pj.mover();
 objetivo.dibujar();
// objetivo.mover();
  bala.mover();
  bala.dibujar();
  
 
 calcularDireccion();
 fill(0);
  text("direccion pj: (" + direccionX + ", " + direccionY + ")", 10, 20);
   stroke(255, 0, 0);  
  strokeWeight(2);
  line(pj.x, pj.y, pj.x + direccionX * 50, pj.y + direccionY * 50);
}

void calcularDireccion() {
  float dx = objetivo.x - pj.x; 
  float dy = objetivo.y - pj.y;  
  float magnitud = sqrt(dx * dx + dy * dy);  
  direccionX = dx / magnitud;  
  direccionY = dy / magnitud; 
}
