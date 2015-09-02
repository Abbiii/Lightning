int startLX, startLY, endLX, endLY;
int startRX, startRY, endRX, endRY;
PImage Pikachu; 

void setup()
{
  Pikachu = loadImage("Pikachu.png"); 
  size(400, 400);
  strokeWeight(5);
  frameRate(15);
}

void draw()
{
  //image(Pikachu, 0, 0, width, height);// draw pikachu background
  //tint(255,126);//transparent
  for (int i=0; i<5; i++)
  {
    LightingL left = new LightingL();
    //LightingR right = new LightingR();
  }
}

class LightingL
{
  int startLX = 190;
  int startLY = 320;
  int endLX = 190;
  int endLY = 320;
  
  void show()
  {
    int c = (int)(Math.random()*110);
    while(endLX > 0)
    {
    stroke(10, 100+c, 150+c);
    endLY = startLY - (int)(Math.random()*10);
    endLX = startLX + (int)(Math.random()*10);
    line(startLX, startLY, endLX, endLY);
    startLX = endLX;
    startLY = endLY;
    }
  }
}
  

void mousePressed()
{
  redraw();
}
