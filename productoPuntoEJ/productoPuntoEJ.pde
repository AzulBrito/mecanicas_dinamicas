PVector posicionPJ;
PVector direccion;
PVector vectorResta;

void setup() {
  size(500, 500);
  posicionPJ = new PVector(width / 2, height / 2);
  direccion = new PVector(1, 0);
}

void draw() {
  background(255);
  dibujarPJ();
  dibujarPunto();
  vectorResta();
}
public void dibujarPJ(){
   posicionPJ.set(mouseX, mouseY);
  line(posicionPJ.x, posicionPJ.y, posicionPJ.x + direccion.x * 50, posicionPJ.y + direccion.y * 50);
}

public void dibujarPunto(){
  fill(#8C22D3);
  ellipse(width / 2, height / 2, 10, 10);
}
public void vectorResta(){
  PVector puntoCentral = new PVector(width / 2, height / 2);
  
  // Calcular el vector ajustado usando el producto punto
  PVector direccionAjustada = PVector.sub(puntoCentral, posicionPJ);
  vectorResta = direccionAjustada;
  vectorResta.normalize();
  line(posicionPJ.x, posicionPJ.y, posicionPJ.x + vectorResta.x * 50, posicionPJ.y + vectorResta.y * 50);
}
