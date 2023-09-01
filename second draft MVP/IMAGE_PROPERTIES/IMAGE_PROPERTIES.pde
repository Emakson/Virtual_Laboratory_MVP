Component flask, stand;

String backgroundImagePath = "D:/Assets/background - e.png";

PImage backgroundImage;
float tableTopY = 397;
float regionx = 519, regiony= 396,regionW = 186, regionH = 142, validx = 604, validy = 477, validW = 99;

void setup () {
  size (1366, 768);

  backgroundImage = loadImage (backgroundImagePath);

  flask = new Component ("D:/Assets - SVG/flask - E.svg", 744.5, 319.79);
  flask.isFillable = true;
  flask.isMovable = true;
  flask.isSelectable = true;
  flask.isShakable = true;

  stand = new Component ("D:/Assets - SVG/stand - E.svg", 485, 80);
  stand.isFillable = false;
  stand.isMovable = false;
  stand.isSelectable = false;
  stand.isShakable = false;
}

void draw () {
  background (255);

  image (backgroundImage, 0, 0);

  flask.draw ();
  stand.draw();
}

void mousePressed () {
  flask.mousePressed ();
}

void mouseDragged () {
  flask.mouseDragged();
}

void mouseReleased () {
  if (flask.hovered()) {
    flask.mouseReleased ();
  }
}
