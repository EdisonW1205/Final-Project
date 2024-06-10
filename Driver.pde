PImage logo;
Button startButton;
Board currentBoard;
boolean onStartingScreen = true;
boolean gameConfigured = false;


void startingScreen(){
   fill(153);
   rect(125, 125, 1500, 750, 25);
   startButton.makeButton();
   triangle(750 + 3 * 125/4, 750, 750 + 3 * 125/4, 750 + 125/2, 900, 750 + 125/4);
   image(logo, 250, 125 + 125/2);
}

void setup(){
  size(1750, 1000);
  logo = loadImage("monopolyLogo.png");
  logo.resize(1250, 500);
  currentBoard = new Board();
  startButton = new Button("", 625, 625 + 3 * 125/4, 500, 125, 50, 100, 100);
}

void draw(){
   background(255);
   fill(0);
   startButton.click();
   if(startButton.isClicked() == true){
     onStartingScreen = false;
   }
   if(onStartingScreen){
     startingScreen();
   }else{
     if(gameConfigured == false){
       
     }else{
       currentBoard.configureBoard(); 
     }
   }
}

