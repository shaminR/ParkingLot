class street {
  String name;
  float posX;
  float posY;
  float posy;
  float widthh;
  
  street (String a, float y, float w) {
    name = a;
    posX=0;
    posY=y;
    widthh=w;
  }

  void drawStreet() {                           //draw street 
    stroke(255);
    strokeWeight(4);
    fill(#838383);
    rect (posX, posY, width, widthh);   
    noStroke();
    rect(posX+587, posY+60, 71, 40);

    fill(50);
    textSize(30);
    text (name, posX+500, posY+55);
  }

  void drawSmoother() {
    fill(#838383);
    rect(posX+587, posY+660, 71, 40);
  }
}