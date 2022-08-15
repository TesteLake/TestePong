void menusetup() {
  fundomenu = loadImage("MenuSEMPLACA.jpg");
  xfundo = 0;
 
  jogo = loadImage("1_jogador.png");
  jogo1 = loadImage("1_jogador_select.png");
  xjogo = 64;
  yjogo = 246;
  wjogo = 211;
  hjogo=  51;
  
  credito = loadImage("creditos_pong.png");
  credito1 = loadImage("creditos_pongselect.png");
  xcredito = 64;
  ycredito = 431;
  wcredito = 174;
  hcredito =  51;
  
  continuar = loadImage("2_jogadores.png");
  continuar1 = loadImage("2_jogadores_select.png");
  xcontinuar = 64;
  ycontinuar = 309;
  wcontinuar = 265;
  hcontinuar = 51;
  
  opcao = loadImage("controles.png");
  opcao1 = loadImage("controles_select.png");
  xopcao = 64;
  yopcao = 372;
  wopcao = 199;
  hopcao = 51;
  
  sair = loadImage("sair.png");
  sair1 = loadImage("sair_select.png");
  xsair = 64;
  ysair = 496;
  wsair = 84;
  hsair = 51;
}

void menudraw (){
  if(menubool){
  image(fundomenu,xfundo,0,800,600);
  
  //Start 1 Jogador
  image(jogo,xjogo,yjogo,wjogo,hjogo);
     if(mousePressed){
     if(mouseX>xjogo && mouseX <xjogo+wjogo && mouseY>yjogo && mouseY <yjogo+hjogo){
       iniciajogo = true;
       menubool = false;
       iabool = true;
       mjogobool = true;
       menujogo.close();
     }
     
 }
 if(mouseX>xjogo && mouseX <xjogo+wjogo && mouseY>yjogo && mouseY <yjogo+hjogo){
   image(jogo1,xjogo,yjogo,wjogo,hjogo);
 }
       
  //2 Jogadores
  image(continuar,xcontinuar,ycontinuar,wcontinuar,hcontinuar);
     if(mousePressed){
       if(mouseX>xcontinuar && mouseX <xcontinuar+wcontinuar && mouseY>ycontinuar && mouseY <ycontinuar+hcontinuar){
         jog2bool = true;
         iniciajogo = true;
       menubool = false;
       mjogobool = true;
       menujogo.close();
       }
     }
 if(mouseX>xcontinuar && mouseX <xcontinuar+wcontinuar && mouseY>ycontinuar && mouseY <ycontinuar+hcontinuar){
   image(continuar1,xcontinuar,ycontinuar,wcontinuar,hcontinuar);
 }
 
 //Controles
  image(opcao,xopcao,yopcao,wopcao,hopcao);
     if(mousePressed){
     if(mouseX>xopcao && mouseX <xopcao+wopcao && mouseY>yopcao && mouseY <yopcao+hopcao){
       controlesbool = true;
       menubool = false;
       
    // println("opções");
    // fill(20);
 }
 }
 if(mouseX>xopcao && mouseX <xopcao+wopcao && mouseY>yopcao && mouseY <yopcao+hopcao){
   image(opcao1,xopcao,yopcao,wopcao,hopcao);
 }
 
  //Sair
  image(sair,xsair,ysair,wsair,hsair);
     if(mousePressed){
     if(mouseX>xsair && mouseX <xsair+wsair && mouseY>ysair && mouseY <ysair+hsair){
       exit();
 }
 }
 if(mouseX>xsair && mouseX <xsair+wsair && mouseY>ysair && mouseY <ysair+hsair){
   image(sair1,xsair,ysair,wsair,hsair);
 }
  //Creditos
  image(credito,xcredito,ycredito,wcredito,hcredito);
     if(mousePressed){
     if(mouseX>xcredito && mouseX <xcredito+wcredito && mouseY>ycredito && mouseY <ycredito+hcredito){
       creditosbool = true;
       menubool = false;
     }
     
 }
 if(mouseX>xcredito && mouseX <xcredito+wcredito && mouseY>ycredito && mouseY <ycredito+hcredito){
   image(credito1,xcredito,ycredito,wcredito,hcredito);
 }
 
}
}
