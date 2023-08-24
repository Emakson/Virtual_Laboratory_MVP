String assetsPath = "D:/Assets/";
String PathFinter = assetsPath + "1st interface.png";
String PathSinter = assetsPath + "2nd interface.png";
String PathThiinter = assetsPath + "3rd interface.png";
String PathFointer = assetsPath + "4th interface.png";

PImage Finterface, Sinterface, Thinterface, Fointerface, Fiinterface, Sixinterface, Seinterface, Eiinterface, Ninterface, Tinterface, Eleinterface, Tweinterface, Thtinterface, Fotinterface;
int counter = 0;
void setup() {
size (1920, 1080);
  Finterface = loadImage (PathFinter);
  Sinterface = loadImage (PathSinter);
    Thinterface = loadImage (PathFinter);
    Fointerface = loadImage (PathFinter);
    Fiinterface = loadImage (PathFinter);
  Sixinterface = loadImage (PathSinter);
    Seinterface = loadImage (PathFinter);
  Eiinterface = loadImage (PathSinter);
    Ninterface = loadImage (PathFinter);
  Tinterface = loadImage (PathSinter);
  Eleinterface = loadImage (PathFinter);
  Tweinterface = loadImage (PathSinter);
  Thtinterface = loadImage (PathFinter);
  Fotinterface = loadImage (PathSinter);
}


void draw () {
  background (255);
 imageMode (CENTER);
 if (counter == 1)
 image (Finterface, width/2,height/2);
  if (counter == 2 )
 image (Sinterface, width/2,height/2);
  /*if (counter == 1 )
  
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
  if (counter == 1 )
 image (Finterface, width/2,height/2);
 */
}
void mousePressed () {
 counter ++; 
}
/*String
String
String
String
String*/
