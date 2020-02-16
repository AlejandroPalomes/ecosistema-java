class TentaclesAina {
  float inc = 0.0;
  float y = 0;
  int time1 = 5000;
  float variacioAngle= 0.0;

float n;
 
  TentaclesAina(){
    smooth();

  }

  void draw(float incomeX, float incomeY){
    inc+=0.01;
    float angle = sin(inc)/80.0+sin(inc*0.8)/100.0;
    angle +=variacioAngle;
    variacioAngle = variacioAngle +random(-0.00015,0.00015);
    //n = noise(variacioAngle)-1;

    //grass from 500-400
  
     pushMatrix();
     translate(incomeX, incomeY);
      for(int i=20; i>0;i--){
        noStroke();
        //strokeWeight(2);
        //stroke(142,128,179, 73);
        //line(0,0,0,-30);
        fill(255,0,90, 73);
        ellipse(1,1,5+i/6,-50);
        translate(0,10);
        rotate(angle);
        }
      popMatrix();
      //variacioAngle+=random(-0.001, 0.001);
   }
}
