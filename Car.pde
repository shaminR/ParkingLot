class car {
  boolean in_use;
  boolean leaving;
  int reset = 0;
  int random;
  float velolotz;
  float start_position;
  float x;
  float y;
  float widths;
  float heights;
  float positionX;
  int red_value =int(random(20, 255));
  int green_value =int(random(0, 200));
  int blue_value= int(random(50, 255));
  
  car(float t, float s, boolean a, boolean l) {
    start_position = t;
    velolotz = s;
    x=0;
    y=0;
    widths = 60;
    heights=  40;
    in_use = a;
    leaving = l;
  }
  void drawEnterCar() {
    if (start_position+x<=555) {
      traverse_right();
      positionX=start_position+x;
    }
    if (start_position+x>=555) {
      if (y==0&&(start_position+x)<=570&&(start_position+x)>=520) {
        random = int(random(0, 100));
      }
      if (random< (40) &&lotz.filled_section()-60!=-60) {                        //change this for proabability to park (random< (k) &&lotz)  change k for probability chaange
        traverse_down();
      } else {
        traverse_right();
      }
    }
    if (start_position+x>2000) {
      in_use = false;
    }
    if (y>200) {
      car_assigner();
      in_use = false;
    }
    if (leaving) {
    }
  }
  
  void traverse_down() {
    if (in_use) {
      y+=3;
      strokeWeight(2);
      stroke(0);
      fill(red_value, green_value, blue_value);
      rect(600, 134+y, heights, widths);
      fill(#24F0EE);                          //window
      rect(600+5, 134+8+y, 30, 20);
      fill(#FEFF1F);                          //headlights
      rect(600+5, 134+55+y, 5, 5); 
      rect(600+30.5, 134+55+y, 5, 5);
    }
  }
  void traverse_right() {
    if (in_use) {
      x+=velolotz;
      strokeWeight(2);
      stroke(0);
      fill(red_value, green_value, blue_value);
      rect(start_position+x, 134, widths, heights);
      fill(#24F0EE);
      rect(start_position+x+8, 134+4, 20, 30);
      fill(#FEFF1F);                          //headlights
      rect(start_position+x+55, 134+5+y, 5, 5); 
      rect(start_position+x+55, 134+30.5+y, 5, 5);
    }
  }
  void car_assigner() {
    if (in_use) {
      int a_value=0;
      int j;
      int m;
      int n;
      int i;
      do {
        j = int(random (0, 2));
        m = int(random (0, 5));
        n = int(random (0, 2));
        i = int(random (0, 3));
        if (lotz.sect[i][j].lot[n][m].occupied == false) {
          lotz.sect[i][j].lot[n][m].occupied = true;
          lotz.sect[i][j].lot[n][m].stayTime = int(random(1, 50));
          lotz.sect[i][j].lot[n][m].feeAdd();
          lotz.sect[i][j].lot[n][m].tCurrent=p.time1();
          a_value=1;
        }
      } while (a_value == 0);
    }
  }
  void get_out() {
    if (leaving&&(600+y<740)) {
      y+=3;
      fill(red_value, green_value, blue_value);
      rect(600, 700+y, heights, widths);
      fill(#24F0EE);
      rect(600+5, 700+8+y, 30, 20);
      fill(#FEFF1F);                          //headlights
      rect(600+5, 700+55+y, 5, 5); 
      rect(600+30.5, 700+55+y, 5, 5);
    }
    if (600+y>=740) {
      x+=velolotz;
      fill(red_value, green_value, blue_value);
      rect(600+x, 665+y+5, widths, heights);
      fill(#24F0EE);
      rect(600+x+8, 665+y+4+5, 20, 30);
      fill(#FEFF1F);                          //headlights
      rect(600+x+55, 665+5+y+5, 5, 5); 
      rect(600+x+55, 665+30.5+y+5, 5, 5);
    }
    if (x+600>width) {
      leaving = false;
      x=0;
      y=0;
    }
    if (y==3) {
      Cars.car_index+=1;
    }
  }
}