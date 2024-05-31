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
  
  
  
}
