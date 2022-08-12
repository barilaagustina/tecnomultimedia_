int vel=200;


void juego() {

fill(255,0,0);
  rect(vel, 450, 70, 10);
}


void keyPressed() {
  if (estado==1) {
  if (key== 'd') {
    vel=vel+3;
  } 
  }
  if (key== 'a') {
    vel=vel-3;
  }
}

void colision(){
//colision del primer pajaro
  boolean colision1, colision2;
  colision1 = (posY >= 580) && (posY <= 620) && (vel >= 150) && (vel <= 220);  
  // la posicion de y, desde que baja hasta que pasa el rect.   la posicion que necesita estar el rect para perder
  
  colision2 = (posY >= 760) && (posY <= 800) && (vel >= 250) && (vel <= 320);
  
  if (colision1 || colision2 ) { //defino un estado  para que cambien la pantalla
    estado = 2;
  }
  if(estado==2){ //cambio la pantalla
     background(255, 0, 0);
     text("perdiste",width/2,height/2);
     
    }            
}
