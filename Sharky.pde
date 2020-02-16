PImage body;

  class Sharky {
    
    float x, y;
    
      Sharky (float _x, float _y){
        
        x=_x;
        y=_y;
        
        body = loadImage("cos.png");
      }
      
      void draw(){
        
        image(body, x, y);
        
        
      }
      
      void update(float _x, float _y){
        
        x += (_x -x)*1.01;
        y += (_y -y);
      }
  }
  
