import processing.sound.*; //<>//
SoundFile music;

void setup() {
  size(1000, 800);

  try {
    music = new SoundFile(this, "C:\Users\Chris\OneDrive\EUC Syd\test\Pong-sound\data\Pong.mp3");
  }
  catch (Exception e)
  {
    println("a bad thing happened");
  }
}




float Xball = 500;
float Yball = 400;
float Rball = 12.5;
float Lpadle = 20;
float Hpadle = 200;
float Xpadle1 = 30;
float Ypadle1 = 800/2-Hpadle/2;
float Xpadle2 = width-Lpadle-30;
float Ypadle2 = 800/2-Hpadle/2;
int count1 = 0;
int count2 = 0;

//float x=50.0f;
float speedx=2.5f;//Fart vandret
float speedy=2.5f;//Fart Lodret


void draw() {//Tegner cirkel
  background(227);
  circle(Xball, Yball, 50);
  Xball=Xball+speedx;//Fart på cirklen
  Yball=Yball+speedy;


  //if(Xball > width || Xball < 0) { //Bounce på vandrette vægge
  //speedx=speedx*-1;
  //speedy=speedy*-1;
  //}
  if (Yball > height-25 || Yball < 0+25) { //Bounce på Lodrette vægge
    music.play();
    speedy=speedy*-1;
  }
  if (Xball >width-25|| Xball < 0+25) {
    reset();
    speedx=speedx*-1;
  }
}
void reset() {
  Xball = 400;
  Yball = 500;
}
