//container 1
class Container {
  LPButton litmuspaper;

  PImage image;

  float x, y;

  boolean active = false;

  Container (float x, float y) {
    this.x = x;
    this.y = y;
  }

  void hold (Cards card) {
    image = card.image;
  }
  void imageHold1 (PImage FilledB) {
    image = FilledB;
  }
  void imagehold2 (PImage BwL) {
    image = BwL;
  }
  void imageHold2 (PImage FilledB) {
    image = FilledB;
  }

  void ButtonHold (LPButton litmuspaper) {
    this.litmuspaper = litmuspaper;
  }

  void draw () {
    if (image != null) {
      image (image, x, y);
    }
  }
}
//container 2
class Container2 {
  PImage image;

  float x, y;

  Container2 (float x, float y) {
    this.x = x;
    this.y = y;
  }
  void imagehold3 (PImage ChL) {
    image = ChL;
  }
  void draw () {
    if (image != null) {
      image (image, x, y);
    }
  }
}
