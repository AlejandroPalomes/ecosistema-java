//////////////////////////////// Monstre ///////////////////////////////////////////
PShape MonsterBodyShape;

class Monstre
{

    float x,y;
    float px,py;
    int age;

  
    int maxMonsterSize;
    float numOjitos;
    int numTentacles;
    float angle;
    
    
    float monsterWidth;
    float monsterHeight;
    
    ojito[] ojitos;
    


    Monstre(int nOjitos, int nTentacle, int mSize, float _x, float _y)
    {
      /////MONSTER MOVEMENT NEEDS /////////////////
      
      x = _x;
      y = _y;
      px = x;
      py = y;
      age = 0;
      
      /////////////////////////////////////////////
      
        /////// MONSTER PROPERTIES ////////
        MonsterBodyShape = loadShape("cuerpo_2.svg");

        monsterWidth = 100;
        monsterHeight = 100;
      
        numOjitos = 1;
        numTentacles = nTentacle;
        maxMonsterSize = mSize;
        
        angle = 360 / numOjitos;
        
        ojitos = new ojito[nOjitos];
       
        
       for (int i = 0; i < numOjitos; i++) {
            float ojitoDistance = 1;
            float x = cos(radians(i*angle)) * ojitoDistance;
            float y = sin(radians(i*angle)) * ojitoDistance;
            ojitos[i] = new ojito(x, y, ojitoDistance);
        }
        for (int i = 0; i < numTentacles; i++) {
           // tentacle[i] = new tentacle(x, y, numTentacle*i*6,0);
        }
        
    }
        
    void draw()
    {   
      
     
     //tentacles
      for (int i = 0; i < numTentacles; i++) {
        //tentacle[i].draw(x,y);
       
      }
 
      // monster body
      fill(0);
      shape(MonsterBodyShape, x , y, monsterWidth, monsterHeight);  // Draw at coordinate (10, 10) at size 100 x 100

      //shape(MonsterBodyShape, (-MonsterBodyShape.width/2) , (-MonsterBodyShape.height/2), monsterWidth, monsterHeight);  // Draw at coordinate (10, 10) at size 100 x 100
  
      // monster eyes
      //eyes[1].update();
      //eyes[1].draw();
      for (int i = 0; i < numOjitos; i++) {
        ojitos[i].update();
        ojitos[i].draw(x+35, y+35);
      }
 
    }
    
    
    void update(float _x, float _y)
    {
      px = x;
      py = y;
      x += (_x - x)*0.1;
      y += (_y - y)*0.1;
    
      age++;
      //draw();
  }
    
    
}
