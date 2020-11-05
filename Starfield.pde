Particle[]lots = new Particle[100];
OddballParticle a = new OddballParticle();
   
void setup()
{
  size(500,500);
  background(0);
    for(int i = 0; i < lots.length; i++)
    {
       lots[i] = new Particle();
    }
}

void draw()
{
      for(int i = 0; i < lots.length; i++)
    {
       lots[i].show();
       lots[i].move();
    }
    a.show();
    a.move();
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
      mySize = 6.4;
      mySpeed = (int)(Math.random()*5);
      myAngle = (Math.random()*2)*Math.PI;
   }
   void move(){
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
   }
   void show(){
     fill(myColor);
     ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
   }
}

class OddballParticle
 {     
   int mColor = 255;
   int mX = 250;
   int mY = 250;
   
   void move() {
     if (mouseX > mX){
       mX = mX + (int)(Math.random()*5)-1;
     }
     else{
       mX = mX + (int)(Math.random()*5)-3;
     }
     if (mouseY > mY){
       mY = mY + (int)(Math.random()*5)-1;
     }
     else{
       mY = mY + (int)(Math.random()*5)-3;
     }
   }
   
   void show() {
   fill(mColor);
   ellipse(mX, mY, 15,15);
   }
 }
