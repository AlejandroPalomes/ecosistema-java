class Moviment {
  PVector posicio;
  PVector variacio;
  
  Moviment(){
    posicio = new PVector(width/2, height/2);
    variacio = new PVector(random(1000),random(1000));
  }
  
  void display(){
    strokeWeight(2);
    fill(142,128,179, 73);
    stroke(0);
    ellipse(posicio.x, posicio.y, 50, 50);
  }
  void moure (){
    posicio.x = map(noise(variacio.x),0,1,0,width);
    posicio.y = map(noise(variacio.y),0,1,0,height);
    
    variacio.add(0.0001,0.0001,0);
  }
}
