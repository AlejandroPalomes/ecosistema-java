PImage tail;

  class Cua {
    
    
    //float foff = 30.0;
    float x, y;
  
      Cua(float _x, float _y){
        
        x=_x;
        y=_y;
        
        
        tail=loadImage("cua.png"); 
      }
      
      void draw(){ 
          
        /*foff = foff + .01;
        float t = noise(foff) * 170;
               
        image(tail, x, y,t, 170);*/
        image(tail, x, y);
        
        
      }
      
      void update(float _x, float _y){
        
        x += (_x -x);
        y += (_y -y);
      }
  }
