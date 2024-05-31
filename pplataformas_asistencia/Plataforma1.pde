class Plataforma {
 private PVector pos; 
 private float velocidad;
 private float amplitud;
 private PImage img;
 
  public Plataforma(PVector pos, float velocidad, float amplitud,PImage img) {
    this.pos = pos;
    this.velocidad = velocidad;
    this.amplitud = amplitud;
    this.img=img;
  }
  
    public void dibujar() {
    image(img, pos.x, pos.y);
  }
  
    public void movimientoSino() {
    fill(#002CFC);
    int segundos = millis()/1000;
    this.pos.y += this.amplitud * (sin(segundos) * this.velocidad);
  }
  
  public void movimientoCos() {
    //fill(#B14AFC);
    int segundos = millis()/1000;
    this.pos.x += this.amplitud * (cos(segundos) * this.velocidad);
  }
  
   public PVector getPos() {
    return this.pos;
  }
  public float getVelocidad() {
    return this.velocidad;
  }
  public float getAmplitud() {
    return this.amplitud;
  }
}
