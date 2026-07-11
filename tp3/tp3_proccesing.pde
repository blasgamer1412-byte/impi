//Blas Romero Com2
//https://youtu.be/GQZD1xgyFnc
PImage tp;  
float tamMax=70;
float r,g,b;
void setup(){
  size(800,400); 
tp=loadImage("Ellipse.jpg");
stroke(0);
strokeWeight(2);
}  
void draw(){
  //invocaciones de las funciones
    dibujarEllipse();
    for (int L = -15; L < 480; L += 70) {
    for (int A = 395; A < 850; A+= 70) {
   dibujarEllipseG(A,L);

    }
    }
image(tp,0,0,400,400);
}  
//cambio de color con un click//
 void mousePressed() {

 r= random(0,255);
  g = random(0,255);
  b = random(0,255);

}
//reinicio de la pantalla de colores
void keyPressed() {
  if (key == 'r' || key == 'R') {
    r = 0;
    g = 0;
    b = 0;
  }
}  
  
  
