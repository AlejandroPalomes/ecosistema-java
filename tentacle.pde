// classe del tentacle
class Tentacle {
 
  int numNodes = 45;                                // total number of nodes
  PVector[] nodes = new PVector[numNodes];
   
  float girth = 5 + random(12);                     // the general speed
  float muscleFreq = 0. + random(100) / 250;       // muscular frequency
  float theta;
  float count;
  float   MonsterBodyShape;
   
  // constructor
  Tentacle (float initTheta) {
    theta = initTheta;
 
    for (int n = 0; n < numNodes; n++) {
      nodes[n] = new PVector(height/2, height/2);
    }
  }
 
  void move( float incomeX, float incomeY) {
         
    float thetaMuscle;
    float dx, dy, d;
 
    //node 0: position, direction, orbiting handle
    nodes[0].x =incomeX - width/2 +50;
    nodes[0].y =incomeY - height/2 +45;
    
     
    
    // node 1: muscule
    count += muscleFreq;
    if(keyPressed) {
      nodes[1].x = nodes[0].x ;
      nodes[1].y = nodes[0].y ;
    } else {
      nodes[1].x = nodes[0].x ;
      nodes[1].y = nodes[0].y ;
    }
     
    // apply kinetic forces down through body nodes
    for (int i = 2; i < nodes.length; i++) {
      dx = nodes[i].x - nodes[i - 2].x;
      dy = nodes[i].y - nodes[i - 2].y;
 
      d = sqrt(dx * dx + dy * dy);
      nodes[i].x = nodes[i - 1].x + (dx * girth) / d;
      nodes[i].y = nodes[i - 1].y + (dy * girth) / d;
    }
  }
 
  void draw() {
    pushMatrix();
 
    for (int i=1; i<numNodes; i++) {
      stroke(0);
      
     strokeWeight(20);  // linia gruixuda
    
      line(nodes[i].x, nodes[i].y,
      nodes[i].x, nodes[i].y);
    }
    noStroke();
    
    fill(0, 0, 0);
    ellipse(nodes[1].x, nodes[1].y, 2,2);
 
    popMatrix();
  }
}

