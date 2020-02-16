PImage aletasuperior;

  class AletaSup {
    
    float x, y;
  
      AletaSup(float _x, float _y){
        
        x=_x;
        y=_y;
        
        
        aletasuperior=loadImage("aletasup.png"); 
      }
      
      void draw(){
        
        image(aletasuperior, x, y);
        
        
      }
      
      void update(float _x, float _y){
        
        x += (_x -x);
        y += (_y -y);
      }
  }
  
