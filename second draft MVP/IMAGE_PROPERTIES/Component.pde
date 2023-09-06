class Component {
  PShape shape;

  float x, y;
  float w, h;
  float preX, preY;
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
    preX = x;
    preY = y;
  }

  void mouseDragged () {
    if (flask.hovered()) {
      x = preX + (mouseX - pressedX);
      y = preY + (mouseY - pressedY);
    }
     if (burette.hovered()) {
      x = preX + (mouseX - pressedX);
      y = preY + (mouseY - pressedY);
    }
      if (stopcock.hovered()) {
      x = preX + (mouseX - pressedX);
      y = preY + (mouseY - pressedY);
    }
      if (ppt.hovered()) {
      x = preX + (mouseX - pressedX);
      y = preY + (mouseY - pressedY);
    }
  }

  void mouseReleased () {  
    releasedX = mouseX;
    releasedY = mouseY;

    if (y + h < tableTopY) {
      x = preX;
      y = preY;
    }
    if ( x+w > regionx && x + w < regionx + regionW && y + h > regiony && y + h < regiony + regionH){
      
     x = validx;
     y = validy - h;
  }
      if ( x+w > Tregionx && x + w < Tregionx + TregionW && y + h > Tregiony && y + h < Tregiony + TregionH){
      
     x = Tvalidx;
     y = Tvalidy - h;
  }
}
}
