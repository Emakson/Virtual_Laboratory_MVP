class Component {
  PShape shape;

  float x, y;
  float w, h;
  float preX, preY;
  float pressedX, pressedY, releasedX, releasedY;
  float regionx, regiony, regionW, regionH, validx, validy, validW, validH;

  boolean isMovable;
  boolean isSelectable;
  boolean isFillable;
  boolean isShakable;
  boolean isSelected;

  int regionToCheck = BOTTOM;

  Component (String path, float x, float y) {
    shape = loadShape (path);
    shape.disableStyle();

    this.x = x;
    this.y = y;

    w = shape.width;
    h = shape.height;
  }

  void setRegionPpts (float regionx, float regiony, float validx, float validy, float regionW, float regionH, float validW, float validH) {
    this.regionx =regionx ;
    this.regiony =regiony;
    this.validx =validx ;
    this.validy =validy;
    this.regionW =regionW;
    this.regionH =regionH ;
    this.validW =validW;
    this.validH =validH;
  }
  Component (PShape shape, float x, float y) {
    this.shape = shape;
    shape.disableStyle();

    this.x = x;
    this.y = y;

    w = shape.width;
    h = shape.height;
  }

  void changeShape (PShape shape) {
    this.shape = shape;
    shape.disableStyle();

    w = shape.width;
    h = shape.height;
  }
  void regionChecker (float x, float y, float w, float h, float regionx, float regiony, float regionW, float regionH, int regionToCheck) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.regionx =regionx ;
    this.regiony =regiony;
    this.regionW =regionW;
    this.regionH =regionH;
    this.regionToCheck = regionToCheck;
  }

  void draw () {
    shapeMode (CORNER);   
    noFill ();
    stroke (0);
    strokeWeight (1);
    shape (shape, x, y);
    rectMode(CORNER);
    rect (regionx, regiony, regionW, regionH);

    if (hovered () && isSelectable) {
      noFill ();
      if (x + w > regionx && x + w < regionx + regionW && y + h > regiony && y + h < regiony + regionH) {
        strokeWeight (3);
      } else {
        strokeWeight (1);
      }
      stroke (blue);
      rect (x, y, w, h);
    }
  }

  boolean hovered () {
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
  }

  void mousePressed () {    
    if (hovered ()) {
      pressedX = mouseX;
      pressedY = mouseY;
      preX = x;
      preY = y;
      isSelected = true;
    }
  }

  void mouseDragged () {
    if (isSelected == true) {

      if (flask.hovered()) {
        x = preX + (mouseX - pressedX);
        y = preY + (mouseY - pressedY);
      }
      if (burette.hovered()) {
        x = preX + (mouseX - pressedX);
        y = preY + (mouseY - pressedY);
      }
      if (ppt.hovered()) {
        x = preX + (mouseX - pressedX);
        y = preY + (mouseY - pressedY);
      }
    }
  }

  void mouseReleased () {  
    releasedX = mouseX;
    releasedY = mouseY;

    isSelected = false;
    //specified region
    if (y + h < tableTopY) {
      x = preX;
      y = preY;
    }
    // BOTTOM
    if (regionToCheck == BOTTOM && x > regionx && x + w < regionx + regionW && y + h < regiony + regionH) {
      y = validy - h;
      x = validx;
    }
    if (regionToCheck == LEFT && x > regionx && x + w < regionx + regionW && y + h > regiony + regionH) {
      x = validx - w;
      y = validy;
    }
    //  if ( x+w > Tregionx & x + w < Tregionx + TregionW && y + h > Tregiony && y + h < Tregiony + TregionH) {
    //  x = Tvalidx;
    //  y = Tvalidy - h;
    //}
  }
}
