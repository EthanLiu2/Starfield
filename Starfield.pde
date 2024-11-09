Particle [] c=new Particle[1000];
void setup()
{
  size(500, 500);
  background(0);
  for(int i=0;i<30;i++){
  c[i]=new OddballParticle();
  }
  for (int i=30; i<c.length; i++) {
    c[i]=new Particle();
  }

}
void draw()
{
 background(0);

  for (int i=0; i<c.length; i++) {
    c[i].move();
    c[i].show();
  }
}
class Particle
{
  double X, Y, Speed, Angle;
  int Color,test;
  Particle() {
    test=5;
    X=(int)(Math.random()*10)+240;
    Y=(int)(Math.random()*10)+240;
    Speed=(Math.random()*5)+0.1;
    Angle=(int)(Math.random()*180);
    Color= color(255);
  }
  void show() {
    fill (Color);
    ellipse((int)X, (int)Y, test, test);
  }         
  void move() {
    X=X+Math.cos(Angle)*Speed;
    Y=Y+Math.sin(Angle)*Speed;
  }
 
}
 void mousePressed(){
  for(Particle i:c){
   i.X=mouseX;
  i.Y=mouseY;
  }
 }
class OddballParticle extends Particle
{
  OddballParticle(){
    test=10;
    X=(int)(Math.random()*10)+240;
    Y=(int)(Math.random()*10)+240;
    Speed=(Math.random()*7)+0.1;
    Angle=(int)(Math.random()*180);
  Color=Color= color(#0035FF);
  }
  void move(){
    X=X+(Math.random()*20)-10;
    Y=Y+(Math.random()*20)-10;
  }
  void show(){
    fill(Color);
    rect((int)X,(int)Y,25,25);
  }
}




