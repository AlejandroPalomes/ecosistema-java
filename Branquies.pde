PImage ratlla;

  class Branquias{
    
    float xoff = 0.0;

  
    float x, y;
    
      Branquias(float _x, float _y){
        
        x=_x;
        y=_y;
        
        ratlla=loadImage("branquia.png");
        
      }
      
      void draw(){
        
        xoff = xoff + .01;
        float n = noise(xoff) * 60;
        
        image(ratlla, x, y,n, 60);
        //image(ratlla, x, y);
        
        
      }
      
      void update(float _x, float _y){
        
        x += (_x -x);
        y += (_y -y);
      }
}
