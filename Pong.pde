import ddf.minim.*;
 
Minim minim;
AudioPlayer musicajogo,menujogo,tirosong;
//Booleanas Musicas
boolean mjogobool = false;
boolean mmenubool = true;;
boolean tirosongbool = false;

boolean cima, baixo,cima2, baixo2;
//MENU
  PImage fundomenu,fundomenu1,jogo,jogo1,continuar,opcao,opcao1,sair,sair1,continuar1,credito,credito1;
  float xfundo,xjogo,xcontinuar,xopcao,xsair,xcredito;
  float yjogo, ycontinuar, yopcao, ysair,ycredito;
  float wjogo, wcontinuar, wopcao, wsair,wcredito;
  float hjogo, hcontinuar, hopcao, hsair,hcredito;
  boolean menubool = true;
  
//Inicia Menu
  boolean iniciajogo = false;
  
  //Especial
    boolean especialbool = false;
    float espx,espy,espl,espa;
    boolean especialx = true;
    boolean espera = true;
    int esperavolta = 0;
    
    boolean especialbool2 = false;
    float espx2,espy2,espl2,espa2;
    boolean especialx2 = true;
    boolean espera2 = true;
    int esperavolta2 = 0;
    
  //Tiro Image
  PImage tiro,tiro2;
  
  //VItoria
    PImage vitoria1,vitoria;
    boolean  vitoriabool = false;
    boolean vitoria1bool = false;
  
  //HUD
  int pontos = 0;
  int pontos2 = 0;
  PFont Neon;
  
  //Creditos
  PImage creditos;
  boolean  creditosbool = false;
  
  //Controles
  PImage controles;
  boolean  controlesbool = false;
  
  //Imagem jogador
  PImage jogador1,jogador2;
  
  //Imagem Bola
  PImage bolaimg,fundoimg;
  
  //Boolean Jogador2
  boolean jog2bool = false;
  //Boolean IA
  boolean iabool = false;
  float iax, iay, ial, iaa;


void setup()
{
  //inicialização
  size(800, 600);
  background(0);
  cima = baixo = cima2 = baixo2 = false;
  //Sons
  minim = new Minim(this);
  musicajogo = minim.loadFile("moon.mp3");
  menujogo = minim.loadFile("menu.mp3");
  tirosong = minim.loadFile("rebatida.wav");
  //Imagem
    jogador1 = loadImage("Jogador_1.png");
    jogador2 = loadImage("Jogador_2.png");
    bolaimg = loadImage("bola_maca.png");
    fundoimg = loadImage("fundo_pong.jpg");
    tiro = loadImage("tiro.png");
    tiro2 = loadImage("tiro_jogador_2.png");
    creditos = loadImage("CREDITOS_PONG.jpg");
    controles = loadImage("CONTROLES_PONG.jpg");
    vitoria = loadImage("JOGADOR_1_VENCEU.jpg");
    vitoria1 = loadImage("JOGADOR_2_VENCEU.jpg");
    
    
  Neon = createFont ("Neon.ttf",32);
  //Especial
    espl = 20;
    espa = 20;

  iniciaJogador1();
  iniciaBola();
  //IA
    ial = 20;
    iaa = 100;
    iax = 770;
    iay = 250;
}

void draw()
{
  //CREDITOS
      if(creditosbool)
        image(creditos,0,0, 800, 600);
        
      if(controlesbool)
        image(controles,0,0, 800, 600);
        
  if(menubool){
    //MUSICA MENU
    if(mmenubool){
      menujogo.loop ();
      menujogo.setGain (-20);
      mmenubool = false;
    }
  
     //MENU
     menusetup ();
     menudraw();
   }
  
  if(iniciajogo){
    menubool = false;
  //entrada/logica
  if(mjogobool){
    musicajogo.loop ();
    musicajogo.setGain(-20);
    mjogobool = false;
  }
  atualizaJogador1();
  atualizaBola();

  //visual 
  background(0);
  image(fundoimg,0,0,800,600);
  desenhaJogador1();
  desenhaBola();
  desenhos();
  
  //Controle Velocidade
  if(especialbool == false){
  if(bolVelX > 15)
    bolVelX = 5;
    
  if(bolVelY > 15)
    bolVelY = 0;
  }
    
    if(pontos == 5){
      image(vitoria,0,0,800,600);
      iniciajogo = false;
      musicajogo.close();
    }
    
    if(pontos2 == 5){
      image(vitoria1,0,0,800,600);
      iniciajogo = false;
      musicajogo.close();
    }
    
  }
    
}

boolean testaColisao(float x1, float y1, float l1, float a1, 
float x2, float y2, float l2, float a2)
{
  boolean h = (x2 < x1 +l1) && (x1 < x2 + l2);
  boolean v = (y2 < y1 +a1) && (y1 < y2 + a2);

  return h && v;
}


void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP )
      cima = true;
    if (keyCode == DOWN)
      baixo = true;
  }
  
  switch (key){
    case '/' : 
      especialbool = true;
      tirosongbool = true;
  }
  
  switch (key){
    case 'x' : 
      creditosbool = false;
      menubool = true;
      controlesbool = false;
  }
  
  switch (key){
    case 'g' : 
      especialbool2 = true;
  }
  
  switch (key){
    case 'w' : 
      cima2 = true;
  }
  
  switch (key){
    case 's' : 
      baixo2 = true;
  }
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == UP)
      cima = false;
    if (keyCode == DOWN)
      baixo = false;
  }
    switch (key){
      case '/' : 
      //especialbool = false;
      //especialx = true;
  }
  
  switch (key){
    case 'w' : 
      cima2 = false;
  }
  switch (key){
    case 's' : 
      baixo2 = false;
  }
}
