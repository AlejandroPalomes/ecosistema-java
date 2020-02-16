

class tentacles{

// interaction affected data
float armPadding = 5; // distance between arm segments
float segmentWid = 20;

// fixed values
int armNum=12;
int segmentCount=20;
 
// code-affected values
float armsAxis = .6;
float armsFlux = 0;
boolean armsDrawn = false;
 
// data holders
float[] armRads = new float[armNum*segmentCount];
 
float x;
float y;

float coloret=10;

tentacles(float _x, float _y){
  //declarar valors
  
  x= _x;
  y= _y;
}


void draw( float _incomeX, float _incomeY,  int _numPotes, int _partsPotes) { //fer arribar valors variables

   pushMatrix();
   translate(_incomeX, _incomeY);
      
   noStroke();
   fill(80);  
   
    
   drawArm(_numPotes,_partsPotes); //passar valors variables
   popMatrix();
}
 
void drawArm(int _armNum, int _segmentCount) {//declarar valors income
 
    armNum= _armNum;
    segmentCount= _segmentCount;
      
    float armWid;
     
    int k, i;
    
    // radian value increases for SIN modulation on arm segments  
    armsFlux += .1;
     
    for (k=0; k<armNum; k++) { 
        pushMatrix();
         
        // rotate all arms
        armsAxis += .001;
         
        // rotate to each
        rotate((2*PI)/armNum*k+armsAxis);
         
        float startRad = 0;
        float radThreshhold = PI/2;
        float radChange = PI/(6+(random(-100, 100)/100));
        float currentRad = 0;
        int radDirection = 1;
          
        for (i=0; i<segmentCount; i++) {
           
             float thisRad;
             int radIndex = k*segmentCount+i;
              
             if (armsDrawn) {
                thisRad = armRads[radIndex]*(1+sin(armsFlux+(PI/2*k+armsAxis))/50);
             } 
             else {
               thisRad = (radChange*(i+6)/segmentCount)*radDirection;
             }
 
             armRads[radIndex] = thisRad;
             currentRad += thisRad;
             armWid = segmentWid - (i*1.5);
              
             translate(armWid+armPadding, 0);
             rotate(thisRad);
              
             if (currentRad > radThreshhold) {
                  radDirection *= -1;
             }

             ellipse(0, 0, armWid, armWid); 
        }
        popMatrix();
    }
     
    if (!armsDrawn) {
       armsDrawn = true;
    }
          
}
}



