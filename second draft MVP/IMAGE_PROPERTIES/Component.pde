class Component {
  PShape shape;


  float x, y;
  float w, h;
  float PreX, PreY;
  float pressedX, pressedY, releasedX, releasedY;

  boolean isMovable;
  boolean isSelectable;
  boolean isFillable;
  boolean isShakable;

  Component (String path, float x, float y) {
    shape = loadShape (path);
    shape.disableStyle();

    this.x = x;
    this.y = y;

    w = shape.width;
    h = shape.height;
  }

  void draw () {
    shapeMode (CORNER);   
    noFill ();
    stroke (0);
    strokeWeight (1);
    shape (shape, x, y);

    if (hovered () && isSelectable) {
      noFill ();
      strokeWeight (1);
      stroke (blue);
      rect (x, y, w, h);
    }
  }

  boolean hovered () {
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
  }

  void mousePressed () {
    pressedX = mouseX;
    pressedY = mouseY;
    PreX = x;
    PreY = y;
  }

  void mouseDragged () {
    if (flask.hovered()) {
      x = PreX + (mouseX - pressedX);
      y = PreY + (mouseY - pressedY);
    }
  }

  void mouseReleased () {  
    releasedX = mouseX;
    releasedY = mouseY;

    if (y + h < tableTopY) {
      x = PreX;
      y = PreY;
    }
    if ( x + w < regionx + regionW && x + w < regiony + regionH){
      
     x = validx;
     y = validy - h;
  }
}
}
