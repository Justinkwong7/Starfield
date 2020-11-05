Particle[]lots = new Particle[500];
   
void setup()
{
  size(500,500);
  background(0);
    for(int i = 0; i < lots.length; i++)
    {
       lots[i] = new Particle();
    }
    lots[0] = new OddballParticle();
}

void draw()
{
  background(0);
      for(int i = 0; i < lots.length; i++)
    {
       lots[i].show();
       lots[i].move();
    }
}

void mouseClicked()
{
   background(0);
    for(int i = 0; i < lots.length; i++)
    {
       lots[i] = new Particle();
    }
    lots[0] = new OddballParticle();
}

class Particle
{
   int myColor;
   double myX, myY, mySpeed, myAngle, mySize;
   Particle()
   {
      myX = (int)(Math.random()*500);
      myY = (int)(Math.random()*500);
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      mySize = Math.random()*10;
      mySpeed = (Math.random()*5);
      myAngle = (Math.random()*2)*Math.PI;
   }
   void move(){
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
   }
   void show(){
     stroke(5);
     fill(myColor);
     ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
   }
}

class OddballParticle extends Particle
 {     
   OddballParticle()
   {
      myX = 250;
      myY = 250;
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
   
   void move() {
     if (mouseX > myX){
       myX = myX + (int)(Math.random()*5)-1;
     }
     else{
       myX = myX + (int)(Math.random()*5)-3;
     }
     if (mouseY > myY){
       myY = myY + (int)(Math.random()*5)-1;
     }
     else{
       myY = myY + (int)(Math.random()*5)-3;
     }
   }
   
   void show() {
   noStroke();
   fill(myColor);
   ellipse((float)myX, (float)myY, 15,15);
   }
 }
