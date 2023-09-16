import geomerative.*;

String backgroundPath =  "data/assets/images/background - e.png";

PImage background;

void setup () {
  size (1366, 768);

  RG.init (this);

  initNavBar ();

  background = loadImage (backgroundPath);
}
void draw () {
  background (255);

  imageMode (CORNER);
  image (background, 0, 0, 1366, 780);
  navBarDraw ();
  componentsDraw();
}

void mouseReleased () {
  navBar.mouseReleased ();
  componentsMouseReleased ();
  if (navBar.selectedIndex == 3) {
    SC_mouseReleased ();
  }
  if (navBar.selectedIndex == 4) {
    burette_mouseReleased ();
  }
  if (navBar.selectedIndex == 2) {
    ppt_mouseReleased ();
  }
  if (navBar.selectedIndex == 2) {
    litmus_mouseReleased ();
  }
  if (navBar.selectedIndex == 1) {
    flask_mouseReleased ();
  }
  if (navBar.selectedIndex == 1) {
    tallBeaker_mouseReleased ();
  }
}
void SC_mouseReleased () {
  if (cContainer.cards[3][0].hovered ()) {
    cContainer.cards[3][0].active = true;
    if (stand == null) {
      initStand ();
    }
  }
}
void flask_mouseReleased () {
  if (cContainer.cards[1][1].hovered ()) {
    cContainer.cards[1][1].active = true;
    if (flask == null) {
      initFlask ();
    }
  }
}
void burette_mouseReleased () {
  if (cContainer.cards[4][0].hovered ()) {
    cContainer.cards[4][0].active = true;
    if (burette == null) {
      initBurette ();
    }
  }
}
void tallBeaker_mouseReleased () {
  if (cContainer.cards[1][0].hovered ()) {
    cContainer.cards[1][0].active = true;
    if (tallBeakerBase == null) {
      initTallBeakerBase ();
    }
  }
  if (cContainer.cards[1][0].hovered ()) {
    cContainer.cards[1][0].active = true;
    if (tallBeakerAcid == null) {
      initTallBeakerAcid ();
    }
  }
}
void litmus_mouseReleased () {
  if (cContainer.cards[2][0].hovered ()) {
    cContainer.cards[2][0].active = true;
    if (litmusRed == null) {
      initLitmusRed ();
    }
  }
  if (cContainer.cards[2][0].hovered ()) {
    cContainer.cards[2][0].active = true;
    if (litmusBlue == null) {
      initLitmusBlue ();
    }
  }
}
void ppt_mouseReleased () {
  if (cContainer.cards[2][1].hovered ()) {
    cContainer.cards[2][1].active = true;
    if (ppt == null) {
      initPpt ();
    }
  }
}
void mousePressed () {
  componentsMousePressed();
}

void mouseDragged () {
  componentsMouseDragged();
}

void keyPressed () {
  componentsKeyPressed ();
}
