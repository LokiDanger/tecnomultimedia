// TP1 : Escena de creditos
// Loki Pare Giacomole 91614/7
//Comision 2

PImage img, persj1, persj2, once, craig, will, mark;
PFont font;
boolean agrandarImg, pantalla1, pantalla2,pantalla3,pantalla4 ,musica1;
int opac, txty, opac1, txtx, tam1;
void setup(){
  size(600,600);
  background(0);
  img = loadImage("ST-img.jpg");
  persj1 = loadImage("persj1.jpg");
  persj2= loadImage("persj2.png");
  once= loadImage("once.jpg");
  craig = loadImage("Craig.png");
  will =loadImage("will.png");
  mark =loadImage("mark.png");
  frameRate(30);
  font= createFont("ST-Font.ttf",25);
  textFont(font);
  tam1 = 0;
  opac = 255;
  opac1 = 0;
  txty= 700;
  txtx= width/2;
  agrandarImg =true;
  pantalla1=true;
  pantalla2=false;
  pantalla3=false;
  pantalla4=false;
  musica1=false;
  imageMode(CENTER);
  textSize(15);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
}
 

void draw(){
  background(0);
  println(agrandarImg);
  
  if(pantalla1){
    image(img, width/2, height/2, tam1*2, tam1);
    
  }
   if (pantalla2){
     image(persj1, width/2, height/2, width, height/2);
     text("Finn Wolfhard as Mike and Noah Schnapp as Will", txtx, txty);
   }
  
  if (pantalla3){
     image(persj2, width/2, height/2, width, height/2);
     text("Gaten Matarazzo as Dustin and Caleb McLaughlin as Lucas", txtx, txty);
  }
  if (pantalla4){
     text("Millie Bobbie Brown as Eleven", txtx, txty);
     
     image(once, width/2, height/2, tam1*2, tam1);
  }
  if(musica1){
    textSize(18);
    textAlign(RIGHT);
    text("Craig Henighan Supervising Sound Editor", 580 ,20);
    image(craig, 100, 100, 193, 194);
    text("Will Files Re recording mixer", 350 ,250);
    image(will, 500, 270, 246, 220);
    text("Mark Paterson Re recording mixer", 590 ,550);
    image(mark, 100, 470, 227, 208);
  }
  if( agrandarImg == true)
    tam1++;
    
  
  
   //if(millis() < 15000){
     //agrandarImg = true;
     //pantalla1=true;
   //}
   if(millis() > 10000){
     agrandarImg = false;
     pantalla1 =false;

   }
    if (millis()> 13000 && millis()< 20000){
      pantalla2= true;
      txty --;
    }
      if (millis()> 20000 && millis()< 23000){
        txty= 700;
        pantalla2= false;
    }
     if (millis()> 23000 && millis()< 31000){
      pantalla3= true;
      txty--;
    }
     if (millis()> 31000 && millis()< 35000){
      pantalla3= false;
      txty= 700;
      tam1=0;
    }
    if(txty< height/2 && txty > height/2)
      txty--;
     if (millis()> 35000 && millis()< 43000){
      pantalla4= true;
      txty--;
      tam1++;
    }
     if (millis()> 43000 && millis()< 45000){
      pantalla4= false;
      txty=650;
    }
     if (millis()> 45000){
      musica1= true;
    }
    
  //image(persj1, width/2, height/2, width, height/2);
}
 //void keyPressed(){
   //if (key == ' ')
   //pantalla1 = !pantalla1; 
