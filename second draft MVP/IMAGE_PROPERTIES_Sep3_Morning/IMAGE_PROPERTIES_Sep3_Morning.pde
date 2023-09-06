Component flask, stand, stopcock, burette, ppt, burettRotated, buretteWithstopcoke;
int ClickCount = 0;
String backgroundImagePath = "D:/Assets/background - e.png";

String buretteUprightPath = "D:/Assets - SVG/buerette with stop cock - E - upright.svg";
String buretteHorizontalPath = "D:/Assets - SVG/burette with stope cock -E.svg";

PImage backgroundImage, burrete;
PShape buretteUpright, buretteHorizontal;

float tableTopY = 397;
float Tregionx = 1208, Tregiony= 253, TregionW = 158, TregionH = 224, Tvalidx = 1258, Tvalidy = 477, TvalidW = 99;


void setup () {
  size (1366, 768);

  backgroundImage = loadImage (backgroundImagePath);

  buretteUpright = loadShape (buretteUprightPath);
  buretteHorizontal = loadShape (buretteHorizontalPath);

  flask = new Component ("D:/Assets - SVG/flask - E.svg", 744.5, 319.79);
  flask.setRegionPpts(518,402,604,477,229,118,99,1);
  flask.regionToCheck = BOTTOM;
  flask.isFillable = true;
  flask.isMovable = true;
  flask.isSelectable = true;
  flask.isShakable = true;

  stand = new Component ("D:/Assets - SVG/stand - E.svg", 485, 80);
  stand.isFillable = false;
  stand.isMovable = false;
  stand.isSelectable = false;
  stand.isShakable = false;

  burette = new Component (buretteHorizontal, 863.54, 380.78);
  burette.setRegionPpts(568,80,568,80,155,236,1,315);
  burette.regionToCheck = LEFT;
  burette.isFillable = true;
  burette.isMovable = true;
  burette.isSelectable = true;
  burette.isShakable = false;

  ppt = new Component ("D:/Assets - SVG/ppt - E.svg", 910.07, 488.87);
  ppt.setRegionPpts(617,267,659,327,80,69,33,3);
  ppt.isFillable = false;
  ppt.isMovable = true;
  ppt.isSelectable = true;
  ppt.isShakable = false;
}

void draw () {
  background (255);

  image (backgroundImage, 0, 0);

  flask.draw ();
  stand.draw();
  burette.draw ();
 
  ppt.draw();

}

void mousePressed () {
  flask.mousePressed ();
  burette.mousePressed ();
 
  ppt.mousePressed ();
  
}

void mouseDragged () {
  if (flask.hovered()) {
    flask.mouseDragged();
  }
 else if (burette.hovered()) {
    burette.mouseDragged();
  }
 else if (ppt.hovered()) {
    ppt.mouseDragged();
  }
  /*if (buretteRotated.hovered()) {
   buretteRotated.mouseDragged();
   }*/
}

void mouseReleased () {

  flask.mouseReleased ();
  burette.mouseReleased ();
  //stopcock.mouseReleased ();
  ppt.mouseReleased();
  // buretteRotated.mouseReleased();
}
void mouseClicked () {
  if (mouseEvent.getClickCount () == 2) { // Double click

    if (burette.hovered()) {
      if (burette.shape == buretteUpright) {
        burette.changeShape(buretteHorizontal);
      } else {
        burette.changeShape (buretteUpright);
      }
    }
  }
}
