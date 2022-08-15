void desenhos () {

      textSize(32); 
      textFont(Neon);
      fill(255,255,255);
      text("" + pontos,68,57);
      text("" + pontos2,700,57);
      
      if(iabool){
      fill(0, 0, 255);
      image(jogador2,iax, iay, ial, iaa);
    }
    
      if(especialbool){
      fill(0, 0, 255);
      image(tiro,espx,espy, 20, 20);
    }
    
      if(especialbool2){
      fill(255, 0, 255);
      image(tiro2,espx2,espy2, 20, 20);
    }
    
    //ESPECIAL 1 Colisão
    if(especialbool){
    if(testaColisao(espx, espy, espl, espa, iax, iay, ial, iaa))
    {
        especialbool = false;
        espera = false;
        especialx = true;
    }
    if(testaColisao(espx, espy, espl, espa,jogador2X, jogador2Y, jogador2L, jogador2A))
    {
        especialbool = false;
        espera = false;
        especialx = true;
    }
    }
    
    //ESPECIAL 2 Colisão
    if(especialbool2){
    if(testaColisao(espx2, espy2, espl2, espa2,jogador1X, jogador1Y, jogador1L, jogador1A))
    {
        especialbool2 = false;
        espera2 = false;
        especialx2 = true;
    }
    }
    
    
      if(espera == false)
        esperavolta++;
        if(esperavolta > 100){
        espera = true;
        esperavolta = 0;
      }
      
      if(espera2 == false)
        esperavolta2++;
        
      if(esperavolta2 > 100){
        espera2 = true;
        esperavolta2 = 0;
      }
      
      
    
      if(especialbool)
        espx += 10;
        
      if(especialbool2)
        espx2 -= 10;
    
    
    
        if(espera){
        if(iay < bolY)
          iay += 10;
          
        if(iay > bolY -50)
          iay -= 10;}
          
        if(espx > 830){
          especialbool = false;
          especialx = true;
        }
        
        if(espx2 < -30){
          especialbool2 = false;
          especialx2 = true;
        }
          
        
}
