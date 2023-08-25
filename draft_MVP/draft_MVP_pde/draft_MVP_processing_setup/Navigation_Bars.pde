void navigationBars_draw () {
  //buttons
  chemicals.draw ();
  containers.draw ();
  indicators.draw ();
  tools.draw();
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
    LitmusP.draw ();
  }
  if (tools.active == true) { 
    Magnifier.draw ();
  }
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
void containers_mouseReleased () {
  if (beakers.hovered ()) {
    container.hold (beakers);
  }
    if (flask.hovered ()) {
    container.hold (flask);
  }
    if (testtube.hovered ()) {
    container.hold (testtube);
  }
}
void indicators_mouseReleased () {
  if (LitmusP.hovered ()) {
    container2.imageHold2 (LP);
  }

}
void tools_mouseReleased () {
  if (Magnifier.hovered ()) {
    container.hold (Magnifier);

}
}
