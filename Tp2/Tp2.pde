//LOKI PARE GIACOMOLE 91614/7 COMISION 2.
//Link de video: https://www.youtube.com/watch?v=elOSPTq5CN4

float distancia_max;


void setup() {
  size(800, 800); 
  noStroke();
  distancia_max = dist(0, 0, width, height);
  textSize(15);
}

void draw() {
  background(0,mouseX,mouseY);
  fill(0);
     if(mousePressed){
       fill( random(0,255), random(0,255), random(0,255), random(0,255));
  }
 
  for(int i = 0; i <= width; i += 15) {
    for(int j = 0; j <= height; j += 15) {
      float tam = dist(mouseX, mouseY, i, j);
      tam = tam/distancia_max * 95;
      rect(i, j, tam, tam);
    }
  }
  fill(255);
  text("PRECAUCION:No ver si es EPILEPTICO, o FOTOSENSIBLE. Si no es asi, clickea con gusto", width/5, height/2);
}
