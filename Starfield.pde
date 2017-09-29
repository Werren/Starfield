void setup()
{
  //your code here
}
void draw()
{
  //your code here
}
class NormalParticle
{
double myX,myY,speed,angle;
int myColor;
NormalParticle(int x, int y){
  myX=x;
  myY=y;
}
void move(){
  myX=myX+Math.cos(angle)*speed;
}
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
