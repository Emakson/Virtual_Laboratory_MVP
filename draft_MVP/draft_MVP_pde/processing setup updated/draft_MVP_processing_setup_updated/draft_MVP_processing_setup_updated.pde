String FilledBPath ="D:/Assets/ex Action/Solution filled Beaker.png";
String LPath ="D:/Assets/indicators/Litmus Paper2.png";
String BwLpath ="D:/Assets/ex Action/Beaker with LP.png";
String ChLpath ="D:/Assets/ex Action/Colour changed LP.png";

//String textpath ="D:/Assets/Texts/objective meet.png";
String tablepath ="D:/Assets/Table.png";
String cBeakerPath = "D:/Assets/Containers/Beakers - Empty.png";
PImage FilledB, LP, BwL, ChL, objectivemeet, table;
PImage cBeaker;
//class
LPButton litmuspaper;
Buttons chemicals, containers, indicators, tools;
Cards beakers, flask, testtube, Acids, neutral, Alkaline, LPaper, Magnifier;
Container container;
Container2 container2;


void setup () {
  FilledB = loadImage (FilledBPath);
  BwL = loadImage (BwLpath);
  ChL = loadImage (ChLpath);
  size (1366, 768);

  table = loadImage(tablepath);
  
  cBeaker = loadImage (cBeakerPath);

  robotoM = createFont ("C:/Users/FSP/Downloads/Telegram Desktop/Roboto/Fonts/roboto-medium.ttf", 11);
  textFont (robotoM);
  //Welcome text
  println ("WELCOME TO OUR VIRTUAL LABORATORY");
  // Buttons
  chemicals = new Buttons ("CHEMICALS", #B17DFC, 57, 574);
  containers = new Buttons ("CONTAINERS", #10CCEB, 209, 574);
  indicators = new Buttons ("INDICATORS", #26C92B, 361, 574);
  tools = new Buttons ("TOOLS", #797979, 513, 574);

  chemicals.active = true;
  litmuspaper = new LPButton ("", #077CDD, 775, 347);
  
  // Cards

  beakers = new Cards ("BEAKERS", cBeakerPath, containers.fillColor, 49, 631);
  flask = new Cards ("FLASK", "D:/Assets/Containers/Flask.png", containers.fillColor, 201, 631);
  testtube = new Cards ("TESTTUBE", "D:/Assets/Containers/Test Tube.png", containers.fillColor, 353, 631);
  Acids = new Cards ("ACIDS", "D:/Assets/chemicals/Acids.png", chemicals.fillColor, 49, 631);
  neutral = new Cards ("NEUTRALS", "D:/Assets/chemicals/Acids.png", chemicals.fillColor, 201, 631);
  Alkaline = new Cards ("ALKALINES", "D:/Assets/chemicals/Acids.png", chemicals.fillColor, 353, 631);
  LPaper = new Cards ("Litmus Paper", "D:/Assets/indicators/Litmus Paper.png", indicators.fillColor, 49, 631);
  Magnifier = new Cards ("MAGNIFIER", "D:/Assets/Tools/Magnifier.png", tools.fillColor, 49, 631);

  //Actions

  container = new Container (width/2, height/2);
  container2 = new Container2 (width/2 + 105.4, height/2);
}

void draw () {
  background (255);
  //drawing navigation bars
  imageMode (CENTER);
  image (table, width/2, height/2);
  navigationBars_draw ();
  containers_draw ();
}

void mouseReleased () {
  // Controls the navigation of nav bars
  navigationBars_mouseReleased ();

  // Controls which card from the selected nav bar to be selected
  if (containers.active) {
    containers_mouseReleased ();
  } else if (chemicals.active) {
    chemicals_mouseReleased ();
  } else if (indicators.active) {
    indicators_mouseReleased ();
  } else if (tools.active) {
    tools_mouseReleased ();
  }
  if (litmuspaper.hovered ()) {
    litmuspaper_mouseReleased();
  }
  //control mouse location
  if (regionHovered()) {
    container.imageHold1 (FilledB);
    container2.imagehold3 (ChL);
    println ("          objective meet");
    println ("#" + "It is an acid.");
  }
}
