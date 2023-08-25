class Container {
 PImage image;
 
  float x, y;

  Container (float x, float y) {
    this.x = x;
    this.y = y;
  }

  void hold (Cards card) {
    image = card.image;
  }
  void imageHold1 (PImage FilledB)  {
  image = FilledB;
  }
  void imagehold2 (PImage BwL){
    image = BwL;
  }
    void imageHold2 (PImage FilledB){
    image = FilledB;
  }
    
  void draw () {
    if (image != null) {
      image (image, x, y);
    }
  }
}
class Container2 {
 PImage image;
 
  float x, y;

  Container2 (float x, float y) {
    this.x = x;
    this.y = y;
  }

    
  void draw () {
    if (image != null) {
      image (image, x, y);
    }
  }
}
