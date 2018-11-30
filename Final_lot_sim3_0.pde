ParkingLot lotz;
Date d = new Date (5, 6, 0, false);
PriceCalculator p = new PriceCalculator (d);
gate entry_gate = new gate ("Exit", "Fee", 480, 727);
gate exit_gate = new gate ("Entrance", "Spaces: ", 480, 215);
street north_street = new street ("Center Street SW", 120, 80);
street south_street = new street ( "Stephen Avenue SE", 800, 80);

carSpawn Cars=new carSpawn(5000);
controlPanel panel;

void setup() {
  frameRate(60);
  size(1250, 880);
  lotz = new ParkingLot(60, 280);
  lotz.drawLot();
  
  exit_gate.filled_Lot();
  entry_gate.filled_Lot();
  
  Cars.construct();
  Cars.constructL();
}
void draw() { 
  lotz.drawLot1();
  
  p.time();
  
  panel = new controlPanel (5,p.rateCheck());
  
  lotz.drawMore();
  
  north_street.drawStreet();
  south_street.drawStreet();
  north_street.drawSmoother();
  
  p.time1();
  p.totalProfit();
  exit_gate.drawGate1();
  entry_gate.drawGate();
  entry_gate.update_number(p.profits, 512, 773);
  exit_gate.update_number(lotz.filled_section(), 558, 260);
  panel.draw_panel();
  Cars.drawCars();
}