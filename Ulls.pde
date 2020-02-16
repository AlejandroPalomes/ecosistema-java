class Ulls{
  
  float pupilX;
  float pupilY;
  float pupilSize;
  float eyeSize;
  float eyeX;
  float eyeY;
  
  Ulls(float x, float y) {
    eyeSize=40;
    pupilSize =15;
    eyeX = x+80;
    eyeY = y-40;
    
    pupilX = eyeX-pupilSize/2;
    pupilY = eyeY-pupilSize/2;
  }
  
  void update(){
    
    float mY = map(mouseY, 0, height, -eyeSize/4, eyeSize/4);
    pupilY = eyeY + mY-pupilSize/200;
    
    float mX = map(mouseX, 0, height, -eyeSize/4, eyeSize/6);
    pupilX = eyeX + mX-pupilSize/2;
  }
  
  void draw(float _x, float _y){
    
    fill(0);
    ellipse(_x + eyeX, _y + eyeY, eyeSize + 4, eyeSize + 4);
    
    fill(255);
    ellipse(_x + eyeX, _y + eyeY, eyeSize, eyeSize);
    
    fill(r,rgb,b);
    ellipse (_x + pupilX, _y + pupilY, pupilSize, pupilSize);
  }
    
}
