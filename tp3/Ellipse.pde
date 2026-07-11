// Función con retorno
float calcularTam(float d){

  if(d < 60){
    return 120;
    
  }else{
    return 70;
  }
}
//ELLIPSES PEQUEÑAS CON SUS ANILLOS//
int posY=20;
int posX=430;
void dibujarEllipse() {
  for (int y = 0; y < 400; y += 70) {
    for (int x = 0; x < 370; x += 70) {
      for (float dia=tamMax; dia>0;dia-=10){
         ellipse(posX+x, posY+y, dia, dia);
      }
    }
   } 
  }
  //Ellipse con anillos superpuesto de la anterior
void dibujarEllipseG(int POX, int POY ){
  stroke(r, g, b);

  float d = dist(mouseX, mouseY, POX, POY);
  float tam = calcularTam(d);
  
   for(float DIAm=tam; DIAm>0;DIAm-=10) 
  ellipse(POX,POY,DIAm,DIAm);
}
   
   

  
  






  
  
  
  
  
  
  
  
  
 
