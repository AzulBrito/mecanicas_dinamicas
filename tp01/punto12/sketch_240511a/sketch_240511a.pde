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
    unaBala.calcularDireccion();
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
  text("Posición actual del objetivo: (" + objetivo.x + ", " + objetivo.y + ")", 10, 40);
  
  
}
void balas() {
  float dx = objetivo.x - pj.x; 
  float dy = objetivo.y - pj.y;
  float distancia = sqrt(dx * dx + dy * dy);
  if(distancia <= 200) {
    if (contadorTiempo >= tiempoEntreBalas) {
      objetivo.mover();
      balaslista.add(new Bullet(pj.x, pj.y, objetivo.x, objetivo.y));
      contadorTiempo = 0;
    }
  }
}
