PImage Pikachu; 

void setup()
{
  Pikachu = loadImage("Pikachu.png"); 
  size(400, 400);
  strokeWeight(1);
  background(100);
  frameRate(15);
}

void draw()
{
  image(Pikachu, 0, 0, width, height);// draw pikachu background
  tint(255,126);//transparent
  for (int i=0; i<5; i++)
  {
    LightingL left = new LightingL();
    left.show();
    LightingR right = new LightingR();
    right.show();
  }
}

class LightingL
{
  int startLX = 177;
  int startLY = 331;
  int endLX = 177;
  int endLY = 331;
  
  void show()
  {
    int c = (int)(Math.random()*110);
    while(endLX > 0)
    {
    	stroke(10, 100+c, 150+c);
    	endLY = startLY - (int)(Math.random()*20);
    	endLX = startLX - (int)(Math.random()*15);
    	line(startLX, startLY, endLX, endLY);
    	startLX = endLX;
    	startLY = endLY;
    }
  }
}

class LightingR
{
  int startRX = 223;
  int startRY = 331;
  int endRX = 223;
  int endRY = 331;
  
  void show()
  {
    int c = (int)(Math.random()*110);
    while(endRX>0)
    {
      stroke(10, 100+c, 150+c);
      endRY = startRY - (int)(Math.random()*20);
      endRX = startRX - (int)(Math.random()*15);
      line(startRX, startRY, endRX, endRY);
      startRX = endRX;
      startRY = endRY;
    }
  }
}
