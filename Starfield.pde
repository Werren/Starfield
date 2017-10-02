NormalParticle [] fdis;
void setup()
{
  size(500, 500);
  fdis=new NormalParticle[50];
  for (int i=0; i<fdis.length; i++)
    fdis[i] = new NormalParticle(250, 250);
}
void draw()
{
  background(0);
  for (int i=0; i<fdis.length; i++) {
    fdis[i].move();
    fdis[i].show();
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
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
