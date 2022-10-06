import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup()
{
  size(500,500);
  background (255);
  
  amp = new Amplitude(this);
  in = new AudioIn(this,0);
  in.start();
  amp.input(in);
}

void draw()
{
  background(55,200,175);
  square(width/2,height/2,amp.analyze()*400);
}
