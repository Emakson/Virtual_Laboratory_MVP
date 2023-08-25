class LPButton {
  float x, y;
  float w = 72.08, h = 10;

  color fillColor = #76C0FF;

  boolean LPactive = false;

  String label = "Litmus paper";

  LPButton (String label, color fillColor, float x, float y) {
    this.label = label;
    this.fillColor = fillColor;
    this.x = x;
    this.y = y;
  }

  void draw () {
    noStroke ();
    fill (fillColor);
    rect (x, y, w, h, 4);

    float alphaP = 0;
    if (LPactive) {
      alphaP = 0;
    } else {
      if (hovered ()) {
        if (mousePressed) {
          alphaP = 0;
        } else {
          alphaP = 0.6;
        }
      } else {
        alphaP = 0.8;
      }
    }

    fill (255, 255 * alphaP);
    rect (x, y, w, h, 4);

    fill (0);
    textSize (11);
    textAlign (CENTER, CENTER);
    text (label, x + w/2, y + h/2);
  }

  boolean hovered () {
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
  }
}
