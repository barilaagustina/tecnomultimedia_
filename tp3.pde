/*
TP3 DE TECNO MULTIMEDIA 
ALUMNOS: 
Tomas Vesco: 91469/8
Agustina Barila: 85073/1
Profesor: David

Hola profe, sabemos que el trabajo no esta completo, pero queriamos entregarlo de igual manera y que veas el avance que tuvimos. En la parte de la colision 
se nos complico con el boolean ya que no pudimos resolver todas las imagenes y solo hicimos los dos primeros. Con respecto a los arreglos, no alcanzamos con el tiempo ya que 
nos quedamos atrasados por lo del boolean. Te pedimos disculpas por no entregarlo en condiciones.
*/
int estado;

PImage pajarito, pajaritos;

float posY;

void setup() {
  estado=0;
  size (500, 500);
  pajarito=loadImage("pajaros.png");
  pajaritos=loadImage("pajaritos.png");
}

void draw() {
  background (0);
  fill(222);
  rect(450, 450, 20, 20);
  //primer pantalla de info del juego 

  if (estado==0) {
    background(0, 249, 255);
    image(pajaritos, 0, 170, 500, 500);
    fill(255, 0, 0);
    circle(430, 450, 50);
    fill(255);
    text("Play", 430, 447);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(35);
    text("No toques a los pajaros", width/2, 100);
    textSize(15);
    fill(0);
    text("esquiva a los pajaros moviendo el cursor\n con la tecla A hacia la izquierda y\n con la tecla D hacia la derecha", width/2, 200);
  }

  if (estado==1) {

    background(85, 222, 255);
    juego();
    image(pajarito, 150, posY-150, 70, 70);
    image(pajarito, 250, posY-320, 70, 70);
    image(pajarito, 450, posY-430, 70, 70);
    image(pajarito, 0, posY-400, 70, 70);
    image(pajarito, 225, posY-500, 70, 70);
    image(pajarito, 78, posY-620, 70, 70);
    image(pajarito, 325, posY-700, 70, 70);
    image(pajarito, 200, posY-800, 70, 70);
    image(pajarito, 400, posY-800, 70, 70);
    image(pajarito, 100, posY-900, 70, 70);



    posY=posY+2.5;
  }
  colision();
}
