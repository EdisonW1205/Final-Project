public class Board{
  PImage board;
  ArrayList<Button> playerColors = new ArrayList<>();
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
    fill(153);
    rect(125, 125, 1500, 750, 25);
    //text("Select a color below", 100, 100);
    playerColors.add(new Button("Red", 250, 400, 250, 200, 255, 0, 0)); // Red
    playerColors.add(new Button("Orange", 750, 400, 250, 200, 255, 165, 0)); // Orange
    playerColors.add(new Button("Yellow", 1250, 400, 250, 200, 255, 255, 0)); // Yellow 
    playerColors.add(new Button("Green", 250, 650, 250, 200, 0, 255, 0)); // Green 
    playerColors.add(new Button("Blue", 750, 650, 250, 200, 0, 0, 255)); // Blue
    playerColors.add(new Button("Purple", 1250, 650, 250, 200, 128, 0, 128)); // Purple
    for(Button b : playerColors){
      b.makeButton();
    }
    textSize(40);
    text(mouseX + " " + mouseY, 100, 100);
  }
} 
