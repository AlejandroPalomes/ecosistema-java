Branquias branq1 ;
Branquias branq2 ;
Branquias branq3;
Sharky cos;
Ulls ull ;
Boca boca ;
AletaSup aletaSup ;
AletaInf aletaInf ;
Cua cua ;

class TauroPrincipal{
  
    ///// configuracion movimiento ////////
    float x,y;
    float px,py;
    int age;
    //////////////////////////////////////
  
  TauroPrincipal(int nUll, float _x, float _y){
    
    
    ////MONSTER MOVEMENT NEEDS /////////////////
      
      x = _x;
      y = _y;
      px = x;
      py = y;
      age = 0;
      
      ////////////////////////////////////////////
  
  
    branq1 = new Branquias(500,295);
    branq2 = new Branquias(520,300);
    branq3 = new Branquias(540,305);
    cos = new Sharky(334,205);
    ull = new Ulls(450,260);
    boca = new Boca(355,271);
    aletaSup = new AletaSup(500,170);
    aletaInf = new AletaInf(500,370);
    cua = new Cua(631,245);
  
  }


  void draw(){
  
    //background(0,200,255);
    aletaSup.draw();
    aletaInf.draw();
    cos.draw();
    ull.draw(x-width/2+40, y-height/2+20);
    
    if (boc){
    boca.draw();
     }
    
    cua.draw();
    branq1.draw();
    branq2.draw();
    branq3.draw();
  
  
  
    cos.update(x+334-350,y+205-300);
    boca.update(x+355-350, y+271-300);
    aletaSup.update(x+500-350,y+170-300);
    aletaInf.update(x+500-350,y+370-300);
    cua.update(x+631-350,y+245-300);
    branq1.update(x+500-350,y+295-300);
    branq2.update(x+520-350,y);
    branq3.update(x+540-350,y+305-300);
  
  }
  
  void update(float _x, float _y)
    {
      px = x;
      py = y;
      x += (_x - x)*velTauroX;
      y += (_y - y)*velTauroY;
    
      age++;
      //draw();
  }
  
}
