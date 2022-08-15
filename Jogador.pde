float jogador1X, jogador1Y, jogador1L, jogador1A, jogador2X, jogador2Y, jogador2L, jogador2A;


void iniciaJogador1()
{
  jogador1L = 20;
  jogador1A = 100;
  jogador1X = 10;
  jogador1Y = 250;
  
  jogador2L = 20;
  jogador2A = 100;
  jogador2X = 770;
  jogador2Y = 250;
}

void atualizaJogador1()
{
  if(espera2){ 
    if(baixo) jogador1Y += 10;
    if(cima) jogador1Y -= 10;}
   
 if(espera){
   if(baixo2) jogador2Y += 10;
   if(cima2) jogador2Y -= 10;}
   
   if(especialbool && especialx){
    espx = jogador1X;
    espy = jogador1Y;
    especialx = false;
  }
  
  if(especialbool2 && especialx2){
    espx2 = jogador2X;
    espy2 = jogador2Y;
    especialx2 = false;
  }
   
   //manter o jogador na tela
   //Jogador1
   if(jogador1Y < 0)
     jogador1Y = 0;
   if(jogador1Y > 500)
     jogador1Y = 500;
  
   //Jogador2
   if(jogador2Y < 0)
     jogador2Y = 0;
   if(jogador2Y > 500)
     jogador2Y = 500;
   
}

void desenhaJogador1()
{
  fill(0, 0, 255);
  image(jogador1,jogador1X, jogador1Y, jogador1L, jogador1A);
  
  if(jog2bool){
    fill(255, 0, 0);
    image(jogador2,jogador2X, jogador2Y, jogador2L, jogador2A);
  }
}
