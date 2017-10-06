Particle [] particles;
public void setup()
{
  size(1000, 1000);
  particles=new Particle[1500];
  for (int i=0; i<particles.length; i++)
    particles[i] = new NormalParticle(500, 500);
      particles[0]=new OddballParticle(500,500);
}
void draw()
{
  background(0);
  for (int i=0; i<particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }
  
}
class NormalParticle implements Particle
{
  double myX, myY, speed, angle;
  int myColor;
  NormalParticle(int x, int y) {
    myX=x;
    myY=y;
    speed=Math.random()*10;
    angle=Math.PI*2*Math.random();
    myColor=color((int)((Math.random()*255)+1), (int)((Math.random()*255)+1), (int)((Math.random()*255)+1));
  }
 public void move() {
    myX=myX+Math.cos(angle)*speed;
    myY=myY+Math.sin(angle)*speed;
  }
 public void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
interface Particle
{
public void show();
public void move();
}
class OddballParticle implements Particle//uses an interface
{
   double myX, myY;
  int myColor;
  OddballParticle(int x, int y) {
    myX=x;
    myY=y;
     myColor=color((int)((Math.random()*255)+1), (int)((Math.random()*255)+1), (int)((Math.random()*255)+1));
  }
 public void move() {
    myX=myX+(Math.random()*6)-3;
    myY=myY+(Math.random()*6)-3;
  }
 public void show()
  {
    fill(myColor);
    rect((float)myX, (float)myY, 30, 30);
    rect((float)myX*(float)(Math.random()*5)-3, (float)myY*(float)(Math.random()*5)-3, 30, 30);
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}
interface Particle
{
public void show();
public void move();
}
class OddballParticle implements Particle//uses an interface
{
   double myX, myY;
  int myColor;
  OddballParticle(int x, int y) {
    myX=x;
    myY=y;
     myColor=color((int)((Math.random()*255)+1), (int)((Math.random()*255)+1), (int)((Math.random()*255)+1));
  }
 public void move() {
    myX=myX+(Math.random()*6)-3;
    myY=myY+(Math.random()*6)-3;
  }
 public void show()
  {
    fill(myColor);
    rect((float)myX, (float)myY, 30, 30);
    rect((float)myX+100, (float)myY+100, 30, 30);
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}
