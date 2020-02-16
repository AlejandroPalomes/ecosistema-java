
class Bitxo{
  
  float x;
  float y;

  int unBitxo=1;
    
  int partsPotes;
  int numPotes;
  float radi1;
  
  float r,g,b;

  tentacles tentacle;
  
  Bitxo( float _x, float _y){
  
    x=_x;
    y=_y;
    
    numPotes= int (random(8));
    partsPotes=int(random(5,20));
    tentacle = new tentacles(x,y);
    radi1= random(3,20);
    r=random(255);
    g=random(255);
    b=random(255);
      
  
  }
  
  void draw(){
    
    stroke(70);
    noFill();
    ellipse(x,y,25,25);
    
    fill(r,g,b);
    ellipse(x,y,radi1,radi1);
    noFill();
    
    tentacle.draw(x, y,numPotes,partsPotes);
  }
  
 void update(float _x, float _y){
  
      x += (_x - x)*0.1;
      y += (_y - y)*0.1;
  }
    
}
