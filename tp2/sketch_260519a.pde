//blas romero COM 2//
float posX; //posicion de oak
int estado, posx2, posletra, opacidad, opacidad2, opacidad3,opacidad4, posletra2, posletra3, posletra4, posletra5, posY, posXstar,posXtar2;
PImage pasto, barfuego,logoP,logoF;
PImage oak, balls, titulo, poke, comp, ash, pika, agua, aguaS, fonoagua,charma,bulba;
float pokeY;
float tiempo;
PFont letra;


//programa principal
void setup() {
  size(640, 480);
  textSize(60);
  //texto y imagenes//
 logoP=loadImage("planta.png");
  logoF=loadImage("logoF.png");
  barfuego=loadImage("fuego,png.png");
  pasto=loadImage("pasto.png");
 bulba =loadImage("bulva.png");
 charma=loadImage("charmander.png");
  fonoagua=loadImage("fonagua.png");
  aguaS=loadImage("squirtle.png");
  agua=loadImage("agua.png");
  pika=loadImage("pika.png");
  balls=loadImage("pngwing.com (4).png");
  titulo=loadImage("pngwing.com (1).png");
  oak=loadImage("pngwing.com (5).png");
  poke=loadImage("pngwing.com (2).png");
  comp=loadImage("empuba.png");
  ash=loadImage("ss.png");
  letra=loadFont("CopperplateGothic-Light-38.vlw");
  textFont(letra, 35);


  //variables declaradas//
  opacidad4=0;
  posXtar2=-300;
  posXstar=900;
  opacidad3=0;
  opacidad2=0;
  posletra3=700;
  posletra4=700;
  posletra2=900;
  posx2 = 700;
  estado=0;     // Asignación de estados
  posX=640;     // Posición x de Red
  posletra=900; // Posición x inicial de las letras
  pokeY=0;
  opacidad=255;
  posY=-50;
  posletra5=-500;
}

void draw() {

  // PANTALLA 0 (INICIO) //
  if (estado == 0) {
    background(200, 0, 0);
    image(balls, 150, 180, 300, 300); // Pokebola
    image(poke, 50, pokeY, 40, 40);
    image(poke, 190, pokeY, 40, 40);
    image(poke, 300, pokeY, 40, 40);
    image(poke, 450, pokeY, 40, 40);
    image(poke, 600, pokeY, 40, 40);
    pokeY = pokeY + 5;
    if (pokeY > 480) {
      pokeY = 0;
    }

      //TITULO PANTALLA 0            
    image(titulo, 70, 0, 480, 200);   
    fill(0);
    textSize(30);
    textAlign(LEFT, LEFT); //
    text("`PRESIONA CUALQUIER TECLA´", 60, 450);
  }
  

//  // PANTALLA 1 (oak y pokemones)
      if (estado==1) {
  background(200); // Fondo gris
      
    image(poke, 50, pokeY, 40, 40);
    image(poke, 190, pokeY, 40, 40);
    image(poke, 300, pokeY, 40, 40);
    image(poke, 450, pokeY, 40, 40);
    image(poke, 600, pokeY, 40, 40);
    pokeY = pokeY + 2;
    if (pokeY > 480) {
      pokeY = 0;
    }
      
     //PROFESOR OAK EN MOVIMIENTO
    image(oak, posX, 40, 200, 400); //
    if (posX > 50) {
    posX = posX - 10;
     }
      //Dialogo 1
    if (posX <= 50) {
     //LETRA EN MOVIMIENTO
     fill(120);
      rect(190, 350, 400, 100);
      //primer texto//
      textAlign(CENTER, CENTER);
      fill(0, opacidad);
     textSize(18);
     text("bienvenido\n al mundo pokemon, en este juego\n tendras como amigos a los pokemon y\n tu decidiras cada momento del juego", posletra, 400);
     if (posletra >= 400) {
      posletra=posletra-10;
     }
    
      
      
     //IMAGENES POKEMONES EN MOVIMIENTO
    image(comp, posx2, 40, 250, 150);
    if ( posx2 >= 300) {
        posx2 = posx2 - 10;
      }
    }

            //Salida Del Dialogo 1
      if (millis()-tiempo>=6000) {
        if (posletra>= -400) {
          posletra=posletra-10;  
       }
       }
//      //Pokemones Movimiento
      if (millis()- tiempo >= 9000) {
        if (posx2 >= -300) {
         posx2= posx2 - 10;
        }
      }
      fill(0);
      textSize(18);
      text("tu objetivo principal\n sera conseguir las medallas de gimnasio\n, completar la pokedex y\n derrotar a los villanos", posletra2, 400);

      
       if (millis()-tiempo>=11000) {
         if (posletra2>=400) {
           posletra2=posletra2 - 10;
} 
}
  //Variables Para Proxima Pantalla
      if (millis()-tiempo>=14000) {
        estado++;
        tiempo=millis();
      }
    }

          //PANTALLA 2
            if (estado== 2){
            background(24, 170, 64);
           //DATOS DE ASH Y PIKACHU EN MOVIMIENTO
            image(pika, 450, posY, 220, 250);
            image(ash, 50, posY, 200, 300);

           if (posY<=100) {
            posY=posY+10;}
          
            image(poke, 50, pokeY, 40, 40);
            image(poke, 190, pokeY, 40, 40);
            image(poke, 300, pokeY, 40, 40);
            image(poke, 450, pokeY, 40, 40);
            image(poke, 600, pokeY, 40, 40);

            pokeY = pokeY + 5;
           if (pokeY > 480) {
             pokeY = 0;
           }
            
             if (millis()-tiempo>=12000) {
             if (posY>=-100) {
               posY=posY+10;
               }
             }

            fill(150, opacidad);
            noStroke();
          rect(450, 20, 180, 80);
          rect(40, 20, 300, 80);
          if (millis()-tiempo>=12000) {
            if (opacidad>0) {
              opacidad=opacidad-15;
           }
        }
          //primera aparicion de texto de ash//
           textSize(18);
          fill(255);
          text("seras el protagonista de\n una emocionante\n historia, tendras que recorrer\n toda la region de kanto", posletra3, 60);
            if (posletra3>=200) {
              posletra3=posletra3-10;
          }
              //pikachu texto//
            fill(255);
            textSize(25);
            text("Pikaaaaa", posletra4, 60);
            if (posletra4>=550) {
              posletra4=posletra4-10;
            }


          //se desplaza primer texto de ash //
            if (millis()-tiempo>=5000) {
              if (posletra3>=-200) {
                posletra3=posletra3 - 10;
              }
            }

            //segunda aparicion de texto de ash//
            textSize(18);
            text("a continuacion\n te prensentaremos\n los pokemones iniciales de esta\n region para \n comenzar tu aventura, \nvamos pikachu", posletra5, 60);
            if (millis()-tiempo>=7000) {
              if (posletra5<=180) {
                posletra5=posletra5+10;
              }
            }
            //2DO texto de ash se desplaza
           if (millis()-tiempo>=10000) {
              if (posletra5>=-180) {
                posletra5=posletra5+10;
             }
            }
           //Se desplaza texto de pikachu//
            if (millis()-tiempo >=10000) {
              if (posletra4>=-550) {
                posletra4=posletra4-10;
              }
           }
          if (millis()-tiempo>=13000){
              estado++;
             tiempo= millis();}
          
         } //Lave Final Pantalla 2
            
            
//            //PANTALLA 3
        if (estado==3){            
       background(51,146 ,242);
        image(poke, 50, pokeY, 40, 40);
            image(poke, 190, pokeY, 40, 40);
            image(poke, 300, pokeY, 40, 40);
            image(poke, 450, pokeY, 40, 40);
            image(poke, 600, pokeY, 40, 40);

            pokeY = pokeY + 5;
           if (pokeY > 480) {
             pokeY = 0;
           }
//              //movimiento de squirtle

            // icono de agua//
              tint(255, opacidad2);
             image(agua, 100, 50, 100, 100);
             
            // squirtle  
               tint(255, opacidad2);
                image(aguaS, 377, 200, 250, 200);
                
            //barra de agua//
            tint(255,opacidad2);
            image(fonoagua, 0, 250, 650, 250);
            
            //rectagunlo 
               fill(0);
               rect(220, 20, 300, 150);
             
//              //texto y opacidad
              textSize(17);
             fill(255, opacidad2);
              text("squirtle es el pokemon \ninicial de tipo agua,\n contiene dos evoluciones\n una al  nivel 16 y otra al 36\n,es debil contra tipos\n plantas pero fuerte \ncontra tipos fuegos", 370, 90);
              
              if (millis()-tiempo>=1000) {
                if (opacidad2<255) {
                  opacidad2=opacidad2+10;
               }
              }
                if (millis()-tiempo>=7000){
                  estado++;
                 tiempo= millis();}
          }//llave estado 3
                  
        if(estado==4){
          background(242, 140, 51); // cielo
          
            fill(51, 156, 5); // pasto
            noStroke();
            rect(0, height/2, width, height/2);
          
           image(poke, 50, pokeY, 40, 40);
            image(poke, 190, pokeY, 40, 40);
            image(poke, 300, pokeY, 40, 40);
            image(poke, 450, pokeY, 40, 40);
            image(poke, 600, pokeY, 40, 40);

            pokeY = pokeY + 5;
           if (pokeY > 480) {
             pokeY = 0;
           }
            //charmander
            noTint();
              image(charma,posXstar,50,160,170);
         if (posXstar > 50) {
            posXstar = posXstar - 10;
           }
           //bullbasur
           noTint();
            image(bulba,  posXtar2,270,160,170);
         if(posXtar2<450){
           posXtar2=posXtar2+10;
         } 
         if (millis()-tiempo>=3000) {
                if (opacidad3<255) {
                  opacidad3=opacidad3+10;}
          
      //principio de charma//     
       tint(255,opacidad3);
            image(barfuego,35,120,170,120);
      
         fill(156, 88, 5,opacidad3);
         rect(350,70,280,150);
         
           //logo de fuego//
           tint(255,opacidad3);
            image(logoF,230,60,100,100);
            
           //texto de charmander//
            textSize(17);
             fill(255, opacidad3);
              text("Charmander  es el pokemon \ninicial de tipo fuego,\n contiene dos evoluciones\n una al  nivel 16 y otra al 36\n,es debil contra tipo\n agua pero fuerte \ncontra tipos plantas", 480, 150);
      //fin de charma//
      
      //principio de bullbasur//   
         tint(255,opacidad3);
            image(pasto,440,400,170,100);
      
            fill(22, 166, 93,opacidad3);    
         rect(20,320,280,150);
   
         //logo de planta//
          tint(255,opacidad3);
            image(logoP,320,320,100,100);
            
         //texto de ballbasur//
          textSize(17);
             fill(255, opacidad3);
              text("Bulbasaur  es el pokemon \ninicial de tipo planta,\n contiene dos evoluciones\n una al  nivel 16 y otra al 32\n,es debil contra tipo\n fuegos pero fuerte \ncontra tipos agua", 150, 400);
       //fin de bull//       
         }   
           if (millis()-tiempo>=8000) {
            if (opacidad4<255) {
            opacidad4=opacidad4+10;}
        
              fill(255,0,0,opacidad4);
              rect(500,10,100,50);

            fill(255,opacidad4);
            textSize(20);
            text("Reniciar", 550, 40);
                
          }
        } 
fill(255);
text(mouseX+"/"+ mouseY,mouseX,mouseY);
println(millis());
println(tiempo);
}
void keyPressed() {

  if (estado < 5) {
    estado++;
    tiempo = millis();
  }
}
void mouseClicked() {
  if (estado == 4) {

    if (mouseX >= 500 && mouseX <= 600 &&   
        mouseY >= 10 && mouseY <= 100) {

      estado = 0;

      tiempo = millis();
      opacidad4=0;
      posXtar2=-300;
      posXstar=900;
      opacidad3=0;
      opacidad2=0;
      posletra3=700;
      posletra4=700;
      posletra2=900;
      posx2 = 700;
      estado=0;     // Asignación de estados
      posX=640;     // Posición x de Red
      posletra=900; // Posición x inicial de las letras
      pokeY=0;
      opacidad=255;
      posY=-50;
      posletra5=-500;
      }
  }
}
  
