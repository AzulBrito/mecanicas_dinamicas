class Plataforma {
 private PVector pos; 
 private float velocidad;
 private float amplitud;
 
  public Plataforma(PVector pos, float velocidad, float amplitud) {
    this.pos = pos;
    this.velocidad = velocidad;
    this.amplitud = amplitud;
  }
  
    public void dibujar() {
    rect(this.pos.x, this.pos.y, 100, 30);
  }
  
    public void movimientoSino() {
    fill(#002CFC);
    int segundos = millis()/1000;
    this.pos.y += this.amplitud * (sin(segundos) * this.velocidad);
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
