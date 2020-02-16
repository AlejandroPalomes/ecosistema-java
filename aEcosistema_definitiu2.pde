Walker[] w;
Walker[] g;
Walker[] z;
Walker[] g2;
Walker[] ai;


TauroPrincipal[] tauro;
Bitxo[] bitxos;
Bitxo[] bitxo2;
Monstre[] monstre;
CriaturaAina[] medusa;

PImage fons;
int numBubbles = 50;
Bubble[] bubbles;


//Bitxo criatura;

int nTauro = 1;
int numBitxos=1;
int numBitxo2=1;
int numMonstre=1;
int numMedusa=1;

float velTauroX;
float velTauroY;
float numUll;
boolean j=true;
//Boolean bitxosMorts[3];
boolean mn=true;
boolean j2=true;
boolean boc=true;
boolean medu=true;
int r;
int rgb;
int b;
int bombr, bombg, bombb;

  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////

  void setup(){
    

      r=0;
      rgb=0;
      b=0;
      bombr=59;
      bombg=173;
      bombb=224;
      velTauroX=0.1;
      velTauroY=0.1;
      size (1000,600);
      fons=loadImage("spongebob-house.jpg");
      noCursor(); 
      smooth();
      //background(0,200,255);
            //criatura = new Bitxo(100,100);//
      bubbles = new Bubble[numBubbles];
      for (int i = 0; i < numBubbles; i++) {
        bubbles[i] = new Bubble();
    }

      
     
    /////////////////
      w = new Walker[nTauro];
      tauro = new TauroPrincipal [nTauro];  
    /////////////////      
      g = new Walker[numBitxos];
      bitxos= new Bitxo[numBitxos];      
    /////////////////
      g2 = new Walker[numBitxo2];
      bitxo2= new Bitxo[numBitxo2];      
    /////////////////
      z = new Walker[numMonstre];
      monstre = new Monstre[numMonstre];
    /////////////////
      ai = new Walker[numMedusa];
      medusa = new CriaturaAina[numMedusa];
  
  
  //////////////////////
  //////////////////////
      for (int u=0; u<numBitxos; u++){
        g[u] = new Walker();
        bitxos[u] = new Bitxo( random(width),random(height));
        //bitxosMorts[u]=false;//
       }
    /////////////////
      for (int u2=0; u2<numBitxo2; u2++){
        g2[u2] = new Walker();
        bitxo2[u2] = new Bitxo( random(width),random(height));
       }
    /////////////////    
       for (int p=0; p<numMonstre; p++){
        z[p] = new Walker();
        monstre[p] = new Monstre(3,4,10, random(width),random(height));
       }
    /////////////////
      for (int mu=0; mu<numMedusa; mu++){
        ai[mu]=new Walker();
        medusa[mu] = new CriaturaAina(random(width), random(height));
      }
    /////////////////    
  
      for (int i=0; i<nTauro; i++){
    
        numUll = random (1); 
        w[i] = new Walker();
        tauro[i] = new TauroPrincipal(int(numUll), random(width),random(height));
          }
    }

  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  

  void draw(){
    
    smooth();
    image(fons,0,0);
    //background(0,200,255);
  //criatura.draw();
   //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  
    for (int u=0; u<numBitxos; u++){
      g[u].walk();
  
      bitxos[u].update(g[u].location.x ,g[u].location.y);

      if(j){
        bitxos[u].draw();
       }
       
 // si bitxo[u] és viu, dibuixel
      /*if(bitxosMorts[u]==false){
        
        bitxos[u].draw();
      }*/
  }
  
   //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////
     for (int u2=0; u2<numBitxo2; u2++){
      g2[u2].walk();
  
      bitxo2[u2].update(g2[u2].location.x ,g2[u2].location.y);

      if(j2){
        bitxo2[u2].draw();
       }

  }
  
   //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  

    for (int p=0; p<numMonstre; p++){
      z[p].walk();
  
      monstre[p].update(z[p].location.x ,z[p].location.y);

      if(mn){
        monstre[p].draw();
       }
  }   

    //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////
  
     for (int mu=0; mu<numMedusa; mu++){
      ai[mu].walk();
  
      bitxo2[mu].update(ai[mu].location.x ,ai[mu].location.y);

      if(medu){
        medusa[mu].draw();
       }

  }
  
   //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  //////////////////////  

      for (int i=0; i<nTauro; i++){
        w[i].walk();
    
        tauro[i].update(w[i].location.x ,w[i].location.y);
        tauro[i].draw();
     
          for(int u=0;u<numBitxos;u++){
            if ((g[u].location.x >= w[i].location.x-80 ) && (g[u].location.x <= w[i].location.x+80) && (g[u].location.y >= w[i].location.y-80 ) && (g[u].location.y <= w[i].location.y+80)&&(boc==false)){
              j=false;
              //boc=true;
            //bitxosMorts[k]=true;       //si  la x i la y de la boca del tauro coincideix amb "qualsevol" altre element, emmagatzemar a bitxosMort[] que el bitxo ha mort.    
          }        
        }
      
          for(int u2=0;u2<numBitxo2;u2++){
            if ((g2[u2].location.x >= w[i].location.x-80 ) && (g2[u2].location.x <= w[i].location.x+80) && (g2[u2].location.y >= w[i].location.y-80 ) && (g2[u2].location.y <= w[i].location.y+80)&&(boc==false)){
              j2=false;
              //boc=true;
          }        
        }
      
          for(int p=0;p<numMonstre;p++){
            if ((z[p].location.x >= w[i].location.x-80 ) && (z[p].location.x <= w[i].location.x+80) && (z[p].location.y >= w[i].location.y-80 ) && (z[p].location.y <= w[i].location.y+80)&&(boc==false)){
             mn=false;
             //boc=true;
          }         
        }
      
        for(int mu=0;mu<numMedusa;mu++){
          if ((ai[mu].location.x >= w[i].location.x-80 ) && (ai[mu].location.x <= w[i].location.x+80) && (ai[mu].location.y >= w[i].location.y-80 ) && (ai[mu].location.y <= w[i].location.y+80)&&(boc==false)){
           medu=false;
           //boc=true;
        }         
      }
      
          if((j==false)&&(mn==false)&&(j2==false)&&(medu==false)){
             r=255;
             bombr=255;
             bombg=0;
             bombb=0;
           //boc=true;
          }
      /*if(((j==false)&&(mn==true))||((j==true)&&(mn==false))){
       boc=true;
      }*/
      
      /*if((mouseX>w[i].location.x-30)&&(mouseX<w[i].location.x+150)&&(mouseY>w[i].location.y-20)&&(mouseY<w[i].location.y+60)){
        velTauroX=2;
        velTauroY=2;
        
      }else{
        velTauroX=0.1;
        velTauroY=0.1;
      }*/
      
    }
    
    for (int i = 0; i < bubbles.length; i++) {
        bubbles[i].update();
        bubbles[i].render();
        if ( bubbles[i].loc.y < -50) {
            bubbles[i].reset();
        }
    }

    
    
  }

  
  
  void mousePressed(){
    
    boc=false;
  }
  
  void mouseReleased(){
    boc=true;
  }
  
  void keyPressed() {
    
   j=true; 
   mn=true;
   j2=true;
   boc=true;
   medu=true;
   r=0;
   rgb=0;
   b=0;
   bombr=59;
   bombg=173;
   bombb=224;
    }
