PImage aletainferior;

  class AletaInf {
    
    float x, y;
  
      AletaInf(float _x, float _y){
        
        x=_x;
        y=_y;
        
        
        aletainferior=loadImage("aletainf.png"); 
      }
      
      void draw(){
        
        image(aletainferior, x, y);
        
        
      }
      
      void update(float _x, float _y){
        
        x += (_x -x);
        y += (_y -y);
      }
  }
  
