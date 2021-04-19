PImage CarDash, LeftBlinker, WarningLights;
PImage RightBlinker;



void setup() {
  size(800, 600);
  background(255);
  smooth();
  // Images must be in the "data" directory to load correctly

  CarDash = loadImage("CarDash.png");

}






void keyPressed()
{
  if(key == CODED)
  {
  
  if (keyCode == LEFT)
  {
   LeftBlinker = loadImage("LeftBlinker.png");
   image(LeftBlinker, 35, 360, 200, 90);
   loop();
  }
  
  if (keyCode == RIGHT)
  {
  RightBlinker = loadImage("RightBlinker.png");
  image(RightBlinker, 590, 360, 200, 90);
  loop();
  }
  
 }
  if (key == 'c')
  {
  fill(19, 237, 31);
  rect(735, 370, 30, 10);
  noLoop();
  }
  if (key == 'w')
  {
  WarningLights = loadImage("WarningLights.png");
  image(WarningLights, 335, 279, 150, 80);
  noLoop();
  }

}

void keyReleased(){
  if (key == 't')
  {
  textSize(10);
  fill(255, 255, 255);
  text("Outside Temp: 75F", 370, 385);
  delay(800);
  noLoop();
  }
  
}

void draw(){

image(CarDash, 0, 0);
image(CarDash, 0, 0, 800, 600);
delay(800);
fill(57,57,57);
rect(335, 279, 150, 80);
String s = "Interior Temp: 70F";
fill(255,255,255);
textSize(10);
text(s, 370, 370);
String Cruise = "Cruise Cont.";
fill(255,255,255);
textSize(12);
text(Cruise, 660, 380);

}
