PImage Pikachu; 
LightingL zuo;
LightingR you;

void setup()
{
  Pikachu = loadImage("http://memberfiles.freewebs.com/47/74/57487447/photos/POKEMON/Pikachu_thunderbolt.png"); //load image
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
    LightingL zuo = new LightingL();
    zuo.show();
    LightingR you = new LightingR();
    you.show();
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
    while(endLX > 0)//stop when go off
    {
    	stroke(10, 100+c, 150+c);//diff color from white to blue
    	endLY = startLY - (int)(Math.random()*20);
    	endLX = startLX - (int)(Math.random()*15);
    	line(startLX, startLY, endLX, endLY);//draw one step of the lightning
    	startLX = endLX;//start over, repeat the process
    	startLY = endLY;
    }
  }
}

class LightingR // same thing as LightningL
{
  int startRX = 223;
  int startRY = 331;
  int endRX = 223;
  int endRY = 331;
  
  void show()
  {
    int s = (int)(Math.random()*110);
    while(endRX < 400)//stop when go off
    {
      stroke(10, 100+s, 150+s);
      endRY = startRY - (int)(Math.random()*20);
      endRX = startRX + (int)(Math.random()*15);
      line(startRX, startRY, endRX, endRY);
      startRX = endRX;
      startRY = endRY;
    }
  }
}
