class Bullet extends GameObject {
  float speed = 10;

  Bullet(Vector2 initPos, float angle) {
    super("", initPos); // No sprite, just a shape
    transform.rotation = angle; // Set bullet direction
  }

  void Update() {
    float angleRad = transform.rotation * (PI / 180);
    float dx = cos(angleRad +80) * speed;
    float dy = sin(angleRad +80) * speed;

    transform.Translate(new Vector2(dx, dy));

    // Desaparece balas
    if (transform.position.x < 0 || transform.position.x > width ||transform.position.y < 0 || transform.position.y > height) {
      drawables.remove(this);
    }
  }

  void Display() {
    pushMatrix(); //Objetos se comportan diferente
    translate(transform.position.x, transform.position.y);
    rotate(transform.rotation * (TWO_PI / 360));

    fill(255, 0, 0); // colorcito
    ellipse(0, 0, 5, 5);

    popMatrix();
  }
}
