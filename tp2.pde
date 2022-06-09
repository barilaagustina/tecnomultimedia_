//https://youtu.be/KnlKiJjDV8U

color lima = color (175, 242, 83);
color blanco = color (255, 255, 255);
int circulo = 30;

void setup() {
  size(500, 500);
    noStroke();
}

void draw() {
  background(lima);
  for (int i= +2; i<circulo; i++) {
    float tam = map(i, 0, circulo+1, width, mouseY);
    float posx = map(i, 0, circulo+1, width/2, mouseX); 
    
    if (i%2==0) {
      fill(blanco);
    } else {
      fill(lima);
    }
    ellipse(posx, height/2, tam, tam);
  
  }
}
