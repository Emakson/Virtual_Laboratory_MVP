class Actions {
  String AcidFilledBPath ="D:/Assets/ex Action/Acid Filled.png";
  String neutralFilledBPath= "D:/Assets/ex Action/neutral Filled.png";
  String AlkalineFilledPath = "D:/Assets/ex Action/Alkaline Filled.png";

PImage AcidFilledB,neutralFilledB,AlkalineFilledB;
  float x, y;

  Actions (float x, float y) {
    this.x = x;
    this.y = y;
  }
    PImage image;

  Actions (String imagePath, float x, float y) {
    this.x = x;
    this.y = y;

    AcidFilledB = loadImage (AcidFilledBPath);
    neutralFilledB = loadImage (neutralFilledBPath);
    AlkalineFilledB =  loadImage (AlkalineFilledPath);
  }

  void hold (Cards card) {
    AcidFilledB = card.image;
    neutralFilledB = card.image;
    AlkalineFilledB = card.image;
  }

  void draw () {
    if (AcidFilledB != null && neutralFilledB != null && AlkalineFilledB != null) {
      image (  AcidFilledB,x, y);
       image (  neutralFilledB,x,y);   
      image (AlkalineFilledB, x, y);  
    }
  }
}
    
