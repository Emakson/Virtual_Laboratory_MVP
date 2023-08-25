class Container {
  PImage image;
  PImage AcidFilledB;

  float x, y;

  Container (float x, float y) {
    this.x = x;
    this.y = y;
    this.AcidFilledB = AcidFilledB;
  }

  void hold (Cards card) {
    image = card.image;
  }

  void draw () {
    if (image != null) {
      image (image, x, y);
    }
  }
}
