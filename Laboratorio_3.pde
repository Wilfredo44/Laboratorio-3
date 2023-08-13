int personajeX;      // Posición en x del personaje
int personajeY;      // Posición en y del personaje
int objetoX;         // Posición en x del objeto
int objetoY;         // Posición en y del objeto
boolean objetoRecogido = false; // Indica si el objeto ha sido recogido

void setup() {
  size(400, 400);
  personajeX = width / 2;  // Inicializa el personaje en el centro en x
  personajeY = height / 2; // Inicializa el personaje en el centro en y
  objetoX = int(random(width)); // Coloca el objeto en una posición aleatoria en x
  objetoY = int(random(height)); // Coloca el objeto en una posición aleatoria en y
}

void draw() {
  background(220);

  // Dibuja el objeto si aún no ha sido recogido
  if (!objetoRecogido) {
    fill(0, 255, 0); // Color verde para el objeto
    ellipse(objetoX, objetoY, 20, 20);
  }

  // Dibuja el personaje
  fill(255, 0, 0); // Color rojo para el personaje
  ellipse(personajeX, personajeY, 30, 30);

  // Verifica si el personaje ha recogido el objeto
  if (!objetoRecogido && dist(personajeX, personajeY, objetoX, objetoY) < 25) {
    objetoRecogido = true;
  }

  // Mueve el personaje en respuesta a las teclas de flecha
  if (keyPressed) {
    if (keyCode == UP) {
      personajeY -= 3;
    } else if (keyCode == DOWN) {
      personajeY += 3;
    } else if (keyCode == LEFT) {
      personajeX -= 3;
    } else if (keyCode == RIGHT) {
      personajeX += 3;
    }
  }
}
