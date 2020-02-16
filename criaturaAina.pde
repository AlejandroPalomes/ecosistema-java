CosAina cosMonstre;
TentaclesAina[] tentaclesai;
int numTentaclesai=6;
float posiCriaturaX=100;
float posiCriaturaY=100;
Moviment m;

class CriaturaAina{
  CriaturaAina(float _x, float _y){
    tentaclesai=new TentaclesAina[numTentaclesai];
    cosMonstre = new CosAina();
    m = new Moviment();
    for (int i=0; i<numTentaclesai; i++){
      tentaclesai[i]= new TentaclesAina();
      m=new Moviment();
    }
    
  }
void draw(){
    posiCriaturaX = m.posicio.x;
    posiCriaturaY = m.posicio.y;
  
    cosMonstre.draw(posiCriaturaX,posiCriaturaY);
    for (int i=0; i<numTentaclesai; i++){
      m.moure();
      tentaclesai[i].draw( posiCriaturaX+100 + i*10, posiCriaturaY + 115);
    }
  }
}

