public class Board{
  PImage board;
  String playerName;
  int currentRound = 0;
  
  
  public Board(){
    board = loadImage("monopoly.png");
    board.resize(750, 750);
  }
  
  void configureBoard(){
    background(255);
    fill(0);
    image(board, 50, 50);
    rect(100, 825, 300, 50, 5);
    rect(450, 825, 300, 50, 5);
    rect(100, 925, 300, 50, 5);
    rect(450, 925, 300, 50, 5);
  }
  
  void startGame(){
    
  }
} 
