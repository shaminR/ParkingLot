class gate {
  String box1;
  String box2;
  float posX;
  float posY;
  boolean status_full;

  gate (String a, String b, float x, float y) {
    box1 = a;
    box2 = b;
    posX = x;
    posY= y;
  }

  void filled_Lot() {                            //check if all stalls are used
    if (lotz.filled_section()-60!=-60) {
      status_full = true;
    } else {
      status_full = false;
    }
  }

  void drawGate() { 
    filled_Lot();                                    
    stroke(0);
    fill(255);
    rect(posX-10, posY, 105+10, 25);          //Draws white box
    fill (#FBFF2E);
    rect(posX-10, posY+27, 105+10, 25);      //Draws neon yello2 sapces box
    fill(0);
    textSize(18);
    text(box1, posX-6, posY+18);
    text(box2, posX-7, +posY+46);
    if (status_full) {
      open_gate();
    } else {
      closeGate();
    }
  }
  void drawGate1() { 
    filled_Lot();                                    
    stroke(0);
    fill(255);
    rect(posX-10, posY, 105+10, 25);          //Draws white box
    fill (#FBFF2E);
    rect(posX-10, posY+27, 105+10, 25);      //Draws neon yello2 sapces box
    fill(0);
    textSize(18);
    text(box1, posX-6, posY+18);
    text(box2, posX-7, +posY+46);
    open_gate1();
  }
  void open_gate1() {                   //draws the bar 
    stroke(#F8FF36);
    strokeWeight(4);

    line(587, 752, 650, 782);
  }
  void open_gate() {                   //draws the bar 
    stroke(#F8FF36);
    strokeWeight(4);
    line(587, 240, 650, 270);
    line(587, 752, 650, 782);
  }
  void closeGate() {
    stroke(#F8FF36);
    strokeWeight(4);
    line(587, 240, 650, 240);
  }
  void update_number(float n, float x, float y) {                //updates fee or space avalible 
    textSize(15);
    text("$" + n, x, y);
  }
  void update_number(int n, float x, float y) {
    textSize(15);
    text(n, x, y);
  }
}