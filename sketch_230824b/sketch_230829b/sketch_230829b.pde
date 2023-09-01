float x, y;
float w, h;

float prevX, prevY;
float pressedX, releasedX,pressedY, releasedY;

void setup () {
  size (1366, 768);

  w = 100;
  h = 100;

  surface.setLocation (50, 50);

  x = width/2;
  y = height/2;
}

void draw () {
  background (255);

  strokeWeight (6);
  stroke (#249AFF);
  fill (#249AFF, 255*0.8);
  rectMode (CENTER);
  rect (x, y, w, h);
}

void mousePressed () {
  pressedX = mouseX;
  pressedY = mouseY;
  prevX = x;
  prevY = y;
  
}

void mouseDragged () {
  x = prevX + mouseX - pressedX;
  y = prevY + mouseY - pressedY;
}

void mouseReleased () {
  x=prevX;
  y =prevY;
}
