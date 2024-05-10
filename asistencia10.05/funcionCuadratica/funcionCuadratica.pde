float a = 0.1;  
float b = 0;  
float c = -15;  

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  stroke(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  stroke(#FC0808);
  float lastY = 0;
  for (int x = -width/2; x < width/2; x++) {
    float y = a * pow(x, 2) + b * x + c;
    if (x > -width/2) {
      line(x + width/2 - 1, -lastY + height/2, x + width/2, -y + height/2);
    }
    point(x + width/2, -y + height/2);
    lastY = y;
  }
}
/**Comencé creando las variables a, b y c. Luego creo el sistema de ejes cartecianos y
los dejé en color negro, luego dibujo los puntos de la funcion cuadratica con el bucle "for" 
que va de izquierda a derecha y calcula cada valor de y correspondiente a sus valores en x con 
la formula de la funcion cuadratica. Tambien cree una linea que recorre los puntos para que sea
más grafico el ejemplo esto lo hice con lastY que "recuerda" el valor ultimo de y para poder trazar
la linea */
