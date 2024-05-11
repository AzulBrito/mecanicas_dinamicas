class GameObject {
  float x;
  float y;
  float direction;  // Ángulo de dirección en radianes
  
  GameObject(float x, float y, float direction) {
    this.x = x;
    this.y = y;
    this.direction = direction;
  }
}

GameObject player;
GameObject enemy;
boolean detected = false;

void setup() {
  size(800, 400);
  
  // Inicializar jugador y enemigo
  player = new GameObject(width/2, height/2, 0);
  enemy = new GameObject(width/4, height/4, PI/4);  // PI/4 radianes = 45 grados
  
  // NoStroke para mejorar la apariencia
  noStroke();
}

void draw() {
  background(200);
  
  // Actualizar posición del jugador según el mouse
  player.x = mouseX;
  player.y = mouseY;
  
  // Dibujar jugador y enemigo
  drawGameObject(player, color(0, 0, 255));
  drawGameObject(enemy, color(255, 0, 0));
  
  // Ejemplo de detección y ataque
  detected = detectPlayer(enemy, player);
  if (detected) {
    attack(enemy, player);
  }
  
  // Mostrar mensaje si detectado
  if (detected) {
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Fuiste detectado!", width/2, height/2);
  }
}

void drawGameObject(GameObject obj, color col) {
  fill(col);
  ellipse(obj.x, obj.y, 20, 20);  // Representación visual de los gameObject
}

boolean detectPlayer(GameObject enemy, GameObject player) {
  float enemyPlayerX = player.x - enemy.x;
  float enemyPlayerY = player.y - enemy.y;
  float enemyDirectionX = cos(enemy.direction);
  float enemyDirectionY = sin(enemy.direction);
  float dotProduct = enemyPlayerX * enemyDirectionX + enemyPlayerY * enemyDirectionY;
  float cosAngle = cos(PI/6);  // 30 grados en radianes
  return dotProduct > cosAngle;
}

void attack(GameObject enemy, GameObject player) {
  // Implementar la lógica de ataque aquí
  // Por ejemplo, crear una bola de fuego que se mueva hacia el jugador
}
