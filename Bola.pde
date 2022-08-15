float bolX, bolY, bolTam;
float bolVelX, bolVelY;

void iniciaBola()
{
  bolX = width/2;
  bolY = height/2;
  bolTam = 10;
  bolVelX = 5;
  bolVelY = 0;
}

void atualizaBola()
{
    bolX += bolVelX;
    bolY += bolVelY;
    
    //testa a colisao com o jogador
    if(testaColisao(bolX, bolY, bolTam, bolTam, jogador1X, jogador1Y, jogador1L, jogador1A))
    {
        bolVelX = -bolVelX;
        bolVelY += (bolY - (jogador1Y+jogador1L/2))/15;
    }
    
    if(jog2bool){
    if(testaColisao(bolX, bolY, bolTam, bolTam, jogador2X, jogador2Y, jogador2L, jogador2A))
    {
        bolVelX = -bolVelX;
        bolVelY += (bolY - (jogador2Y+jogador2L/2))/15;
    }
    }
    
    if(iabool){
    if(testaColisao(bolX, bolY, bolTam, bolTam, iax, iay, ial, iaa))
    {
        bolVelX = -bolVelX;
        bolVelY += (bolY - (iaa+ial/2))/15;
    }
    }
    
    //manter nos limites
    if(bolY > height-bolTam)
   {
      bolY = height-bolTam;
      bolVelY = -bolVelY;
    }
    if(bolY < 0)
    {
       bolY = 0; 
       bolVelY = -bolVelY;
    }
    
    //FEZ PONTO
    if(bolX > 780)
    {
      bolX = 400;
      bolY = 300;
      bolVelX = 5;
      bolVelY = 0;
      pontos ++;
      bolVelX = +bolVelX;
    }
    if(bolX < 20)
    {
      bolX = 400;
      bolY = 300;
      bolVelX = 5;
      bolVelY = 0;
      pontos2 ++;
      bolVelX = +bolVelX;
    }
    
}

void desenhaBola()
{
  fill(250, 120, 10);
  image(bolaimg,bolX, bolY, bolTam, bolTam);
}
