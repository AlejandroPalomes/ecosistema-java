class CosAina {
  PShape s;
  
  CosAina() {
    s = loadShape("cap medusa.svg");
  }

  void draw( float incomeX, float incomeY) {
    shape(s, incomeX, incomeY,300,200);
  }

}
