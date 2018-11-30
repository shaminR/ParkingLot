class Date {
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;
  Date (int d, int h, int m, boolean beforeNoon) {
    today = d%7;
    hour = h%23;
    minute = m%60;
    before_noon = beforeNoon;
    if (hour>12) {
      hour%=12;
    }
  }
  Date(Date d) {
    minute = (d.minute);
    hour = (d.hour);
    today = (d.today);
    before_noon = d.before_noon;
  }
  void addHour() {
    int newh=hour;
    hour++;
    if (newh==11 && before_noon == false) {
      hour%=12;
      before_noon ^= true;
      today++;
    } else if (newh==11) {
      hour%=12;
      before_noon ^= true;
    } else hour%=12;
  }
  void addMinute () {
    int newmin=minute;
    minute++;
    if (newmin>=59 && hour==11 && before_noon == false) {
      minute%=60;
      addHour();
    } else if (minute>=60) {
      minute%=60;
      addHour();
    }
  }
  boolean equal (Date x) {
    int a=x.minute;
    int b=x.hour;
    int c=x.today;
    boolean d=x.before_noon;
    if (a==minute && b==hour && c==today && d==before_noon)
      return true;
    else return false;
  }
  String toString () {
    String date = days[today];
    if (hour<10){
      date+= " 0" + hour;
    }
    else{
      date+= " " + hour;
    }
    if (minute<10){
      date+= ":0" + minute;
    }
    else{
      date+= ":" + minute;
    }
    if (before_noon){
      date+= "AM";
    }
    else{
      date+= "PM";
    }
    if(today==6 && minute>=59 &&hour==11&&before_noon==false){
      today=0;
      minute=0;
      hour=0;
      before_noon=true;
    }
    textSize(25);
    fill(255);
    text(date,1000,67);
    return date;
  }
}