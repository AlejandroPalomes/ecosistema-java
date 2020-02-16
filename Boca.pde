PImage mouth;

  class Boca {
    
    float x, y;
    
      Boca (float _x, float _y){
      
        x=_x;
        y=_y;
        
        
     
       mouth = loadImage("boca.png");
    
      }
   
       void draw(){
    
        image(mouth, x, y);
      } 
   
      void update(float _x, float _y){
        
        x += (_x -x);
        y += (_y -y);
      }
  }
