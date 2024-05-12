PJ pj;

Objetivo objetivo;
float direccionX, direccionY;
ArrayList<Bullet> balaslista;
ArrayList<Bullet> nuevasBalas = new ArrayList<Bullet>();

int tiempoEntreBalas = 30; 
int contadorTiempo = 0;

void setup(){
size(400,800);  
pj= new PJ();
balaslista= new ArrayList<Bullet>();
objetivo= new Objetivo();
pj.setObjetivo(objetivo);
}

void draw(){
 background(200); 
 pj.dibujar();
 pj.mover();
 objetivo.dibujar();
objetivo.mover();
balas();
  
  
   for (int i = balaslista.size() - 1; i >= 0; i--) {
    Bullet unaBala = balaslista.get(i);
    unaBala.dibujar();
    unaBala.mover();
    unaBala.Remover();
    if (unaBala.remover == true) {
      balaslista.remove(i);
    }
  }
  
  balaslista.addAll(nuevasBalas);
  nuevasBalas.clear(); 
  contadorTiempo++;
 //pj.calcularDireccion();
 
 fill(0);
  text("direccion pj: (" + direccionX + ", " + direccionY + ")", 10, 20);
   stroke(255, 0, 0);  
  strokeWeight(2);
  line(pj.x, pj.y, pj.x + direccionX * 50, pj.y + direccionY * 50);
  
  
}
void  balas(){
   if (contadorTiempo >= tiempoEntreBalas) {
    balaslista.add(new Bullet(pj.x, pj.y));
    contadorTiempo = 0; 
  }
}
