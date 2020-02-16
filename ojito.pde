class ojito
{
    float T_ull;
    float T_pupila;
    float ojitoDistance;
    float ojitoX;
    float ojitoY;
    float pupilitaX;
    float pupilitaY;
    
    ojito(float x, float y, float e)
    {
        T_ull = 40;
        T_pupila = 15;
        ojitoX = x;
        ojitoY = y;
        ojitoDistance = e;
        
        pupilitaX = ojitoX-T_pupila/2;
        pupilitaY = ojitoY-T_pupila/2;
    }
    
    void update()
    {
        float mY = map(mouseY, 0, height, - T_ull/4,  T_ull/4);
        pupilitaY = ojitoY + mY-T_pupila/2;

        float mX = map(mouseX, 0, height, - T_ull/4,  T_ull/4);
        pupilitaX = ojitoX + mX-T_pupila/2;
    }
    
    void draw(float _x, float _y)
    {
        // stroke around eyeball
        fill(0);
        ellipse(_x + ojitoX, _y + ojitoY,  T_ull + 4,  T_ull + 4);
        
        // eyeball
        fill(255);
        ellipse(_x + ojitoX, _y + ojitoY,  T_ull,  T_ull);
        
        // pupil
        fill(0);
        ellipse(_x + pupilitaX, _y + pupilitaY, T_pupila, T_pupila);    
    }
}
