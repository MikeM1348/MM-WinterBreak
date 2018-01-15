int xNumber = 400;
int yNumber = 400;
PImage bg;
PImage Aegis;
PImage Roblox;
PImage Sprite;
float rot = 0;
float randX = 0;
float randY = 0;
import processing.sound.*;

SoundFile file;

void setup()
{
  size(640, 360);
  bg = loadImage("Gormott.png");
  Sprite = loadImage("Mike_Joy.gif");
  randX = random(width);
  randY = random(height);
  imageMode(CENTER);
  Roblox = loadImage("Roblox.png");
  Aegis = loadImage("Aegis.png");
  file = new SoundFile(this,"Incoming!.mp3");
  file.play();
  file.amp(0.5);
}


void draw()
{
  background(bg);
  DrawPlayer();
  Collision();
}

void DrawPlayer()
{
   image(Roblox, randX, randY, 38, 38);
   image(Sprite, 320, 180, 21, 27);
  pushMatrix();
    translate(mouseX,mouseY);
    rotate(rot);
    image(Aegis, 0, 0, 27, 100);
  popMatrix();
    
rot-=PI/6;

}

void Collision()
{
  if (yNumber < -100)
  {
    yNumber = 800;
  }
  if(dist(mouseX,mouseY,randX,randY)<100)
  {
    randX = random(width);
    randY = random(height);
  }
}