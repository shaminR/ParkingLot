class controlPanel {
  int s;
  float rate;
  controlPanel(int x, float r) {
    s = x;
    rate = r;
  }
  void draw_panel() {
    stroke(0);
    fill(255);
    rect(10, 10, 1230, 100);
    d.addMinute();
    fill(0);
    rect(980, 10, 500, 100);
    d.toString();
    fill(0);
    text("Today's Parking Rate:", 20, 37);

    if (d.today>=0 && d.today<=5) {                  //Rate Highlighter
      noStroke();
      fill(#B8FCFC);
      rect(18, 43, 280, 30);
      
    } else { 
      noStroke();
      fill(#B8FCFC);
      rect(18, 73, 250, 30);
    }

    fill(0);
    stroke(0);
    text("Mon - Sat Rate: $3.00", 20, 67);
    text("Sunday Rate: $1.50", 20, 97);
    text("Net Profits : $" + p.profits, 530, 67);
    rect(900, 10, 100, 100);
    if ((d.before_noon && d.hour>=7 && d.hour<=11) || (d.before_noon==false && d.hour>=0 && d.hour<=6)) {        //sun up between 7am and 6pm
      fill(#FFF300);
      ellipse(950, 60, 70, 70);
    } else {
      fill(#A5A5A5);
      ellipse(950, 60, 70, 70);
      fill(0);
      ellipse(960, 55, 50, 50);
    }
  }
}