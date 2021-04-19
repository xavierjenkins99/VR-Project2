PImage CarDash, LeftBlinker;
PImage RightBlinker;



void setup() {
  size(800, 600);
  background(255);
  smooth();
  // Images must be in the "data" directory to load correctly
  CarDash = loadImage("CarDash.png");
}






void keyPressed(){
  if(key == CODED){
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
  }
  if (key == 'T'){
  textSize(70);
  text("Temp: 75F", 35, 360, 300);
  fill(255, 255, 255);
  }
  }
}

void draw(){

image(CarDash, 0, 0);
image(CarDash, 0, 0, 800, 600);
delay(800);
}
