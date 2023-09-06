float minH, maxH;
float minY, maxY;

void setup () {
  String path = "D:/Assets - SVG/SVG Assets/Masked & Commented/flask.svg";
  
  String lines [] = loadStrings (path);
  String line = lines [1].replace ("<!--", "").replace ("-->", "");
  String splitted [] = split (line, ",");
  
  minH = float (splitted [0].trim ());
  maxH = float (splitted [1].trim ());
  minY = float (splitted [2].trim ());
  maxY = float (splitted [3].trim ());

  setP (path, 100);
  
  exit ();
}

void setP (String path, float p) {
  float h = map (p, 0, 100, minH, maxH);
  float y = map (p, 0, 100, minY, maxY);

  setH (path, h);
  setY (path, y);
}

void setH (String path, float h) {
  String names [] = loadStrings (path);

  for (int a = 0; a < names.length; a ++) {
    String line = names [a];
    if (line.contains ("LiquidMask")) { 
      String splitted [] = split (line, "\"");
      splitted [5] = str (h);
      line = join (splitted, "\"");
      names [a] = line;
      break;
    }
  }
  saveStrings (path, names);
}
void setY (String path, float y) {
  String names [] = loadStrings (path);

  for (int a = 0; a < names.length; a ++) {
    String line = names [a];
    if (line.contains ("LiquidMask")) { 
      String splitted [] = split (line, "\"");
      String translate = splitted [7].replace ("translate", "").replace ("(", "").replace (")", "");
      String transSplitted [] = split (translate, " ");
      transSplitted [1] = str (y);

      translate = "translate(" + join(transSplitted, " ") + ")";
      splitted [7] = translate;

      line = join (splitted, "\"");
      names [a] = line ;

      break;
    }
  }
  saveStrings (path, names);
}

float getH (String path) {
  String names [] = loadStrings (path);

  float h = 0;

  for (int a = 0; a < names.length; a ++) {
    String line = names [a];
    if (line.contains ("LiquidMask")) { 
      String splitted [] = split (line, "\"");
      h = float (splitted [5]);
    }
  }
  return h;
}

float getY (String path) {
  String names [] = loadStrings (path);

  float y = 0;

  for (int a = 0; a < names.length; a ++) {
    String line = names [a];
    if (line.contains ("LiquidMask")) { 
      String splitted [] = split (line, "\"");
      String translate = splitted [7].replace ("translate", "").replace ("(", "").replace (")", "");
      String transSplitted [] = split (translate, " ");

      y = float (transSplitted [0]);
    }
  }
  return y;
}
