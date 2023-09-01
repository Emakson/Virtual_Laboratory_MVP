void navigationBars_draw () {
  //buttons
  chemicals.draw ();
  containers.draw ();
  indicators.draw ();
  tools.draw();
   //LP buttons

  //cards
  if (containers.active == true) {
    beakers.draw ();
    flask.draw (); 
    testtube.draw ();
  }
  if (chemicals.active == true) {
    Acids.draw ();
    neutral.draw (); 
    Alkaline.draw ();
  }
  if (indicators.active == true) { 
    LPaper.draw ();
  }
  if (tools.active == true) { 
    Magnifier.draw ();
  }
}

void containers_draw () {
  if (container.active)
    container.draw ();


  container2.draw ();
  
  if (litmuspaper.LPactive)
    litmuspaper.draw();
}

void navigationBars_mouseReleased () {
  if (containers.hovered ()) {
    containers.active = true;
    chemicals.active = false;
  }
  if (indicators.hovered ()) {
    indicators.active = true;
    chemicals.active = false; 
    containers.active = false;
  }
  if (tools.hovered ()) {
    tools.active = true;
    chemicals.active = false; 
    containers.active = false;
    indicators.active = false;
  }
  if (chemicals.hovered ()) {
    chemicals.active = true;
    indicators.active = false;
    containers.active = false;
    tools.active = false;
  }
  if (containers.hovered ()) {
    chemicals.active = false;
    indicators.active = false;
    containers.active = true;
    tools.active = false;
  }
  if (indicators.hovered ()) {
    chemicals.active = false;
    indicators.active = true;
    containers.active = false;
    tools.active = false;
  }
}

void chemicals_mouseReleased () {
  if (container.active) {
    if (Acids.hovered ()) {
      container.imageHold1 (FilledB);
    }
    if (neutral.hovered ()) {
      container.imageHold1 (FilledB);
    }
    if (Alkaline.hovered ()) {
      container.imageHold1 (FilledB);
    }
  }
}
void containers_mouseReleased () {
  if (beakers.hovered ()) {
    container.hold (beakers);
    container.image = loadImage ("D:/Assets/Containers/Beakers.png");
    container.active = true;
  }
  if (flask.hovered ()) {
    container.hold (flask);
   // container.active = true;
  }
  if (testtube.hovered ()) {
    container.hold (testtube);
    //container.active = true;
  }
}
void indicators_mouseReleased () {
  if (LPaper.hovered ()) {
    container.ButtonHold (litmuspaper);
    litmuspaper.LPactive = true;
  }
}
void tools_mouseReleased () {
  if (Magnifier.hovered ()) {
    container.hold (Magnifier);
  }
}
void litmuspaper_mouseReleased () {
  container.imagehold2 (BwL);
  litmuspaper.LPactive = false;
}
float x = 688.87;
float y = 341.89;
float w = 11;
float h = 32;
boolean regionHovered () {
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}
