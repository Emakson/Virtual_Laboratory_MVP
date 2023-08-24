String assetsPath = "D:/Assets/";

String pathTable = assetsPath + "Table.png";

String pathBE = assetsPath + "Beaker Empty.png";
String pathBF = assetsPath + "Beaker Filled.png";
String pathL = assetsPath + "Litmus Blue.png";
String pathBFwL = assetsPath + "Beaker with Litmus Blue.png";
String pathDL = assetsPath + "Dipped Litmus Blue.png";


PImage bEmpty, bFilled, lp, bFwL, Dlp ;
PImage table;
int counter = 0;

void setup () {
  size (1920, 1065);

  bEmpty = loadImage (pathBE);
  bFilled = loadImage (pathBF);
  table = loadImage (pathTable);
  lp =loadImage(pathL);
  bFwL=loadImage(pathBFwL);
  Dlp =loadImage(pathDL);
}

void draw () {
  background (255);  
  imageMode (CENTER);
  if ( counter >= 1) 
    image (table, width/2, 470 + table.height/2);

  if (counter >= 2 && counter < 5)
    image( bEmpty, width/2, 645 + bEmpty.height/2);

  if ( counter >= 3 && counter < 5 || counter > 5) 
    image( bFilled, width/2, 645 + bEmpty.height/2);

  if ( counter >= 4 && counter < 5) 
    image (lp, 1300, 660);

  if (counter == 5)
    image( bFwL, width/2, 645 + bEmpty.height/2);

  if ( counter >= 6) 
    image( Dlp, 1300, 600);
}

void mousePressed () {
  counter++;
}
