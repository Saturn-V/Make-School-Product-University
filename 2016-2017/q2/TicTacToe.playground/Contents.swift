//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = UIView(frame: canvasFrame)

canvas.backgroundColor = .white

PlaygroundPage.current.liveView = canvas

class BoardView: UIView {
    
    var BoardViewFrame: CGRect?
    var fieldWidth: CGFloat?
    var fieldHeight: CGFloat?
    var boardWidth: CGFloat?
    var boardHeight: CGFloat?
    var fields: [[UILabel]] = [[UILabel(), UILabel(), UILabel()],
                               [UILabel(), UILabel(), UILabel()],
                               [UILabel(), UILabel(), UILabel()]
        
    
    ]
    var currentGame = Board()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(fieldWidth: CGFloat, fieldHeight: CGFloat) {
        
        self.fieldWidth = fieldWidth
        self.fieldHeight = fieldHeight
        
        self.boardWidth = fieldWidth * 3
        self.boardHeight = fieldHeight * 3
        
        self.BoardViewFrame = CGRect(x: 0, y: 0, width: self.boardWidth!, height: self.boardHeight!)
        
        super.init(frame: BoardViewFrame!)

        generateFields(fieldWidth: self.fieldWidth!, fieldHeight: self.fieldHeight!)
    }
    
    init(boardWidth: CGFloat, boardHeight: CGFloat) {
        
        self.fieldWidth = boardWidth / 3
        self.fieldHeight = boardHeight / 3
        
        self.boardWidth = boardWidth
        self.boardHeight = boardHeight
        
        self.BoardViewFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
        
        super.init(frame: BoardViewFrame!)
        
        generateFields(fieldWidth: self.fieldWidth!, fieldHeight: self.fieldHeight!)
    }
    
    func generateFields(fieldWidth: CGFloat, fieldHeight: CGFloat) {
        for posY in 0...2 {
            for posX in 0...2 {
                let fieldFrame = CGRect(x: fieldWidth * CGFloat(posX), y: fieldHeight * CGFloat(posY), width: fieldWidth, height: fieldHeight)
                let fieldView = UILabel(frame: fieldFrame)
                fieldView.layer.borderColor = (UIColor.black).cgColor
                fieldView.layer.borderWidth = 1
                fieldView.isUserInteractionEnabled = true
                
                let tappedGesture = UITapGestureRecognizer(target: self, action: #selector(createMove))
                
                fieldView.addGestureRecognizer(tappedGesture)

                fields[posY][posX] = fieldView
                self.addSubview(fieldView)
            }
        }
    }
    
    func createMove(sender: UITapGestureRecognizer) {
        let field = sender.location(in: self)
        if !currentGame.winner() {
            if field.x <= fieldWidth!  {
                if field.y <= fieldHeight! {
                    print("Player \(currentGame.currentTurn!) moved: 0,0")
                    fields[0][0].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 0, y: 0)
                    print("Player \(currentGame.currentTurn!) is next")
                    
                } else if field.y <= fieldHeight! * 2 {
                    print("Player \(currentGame.currentTurn!) moved: 0,1")
                    fields[1][0].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 0, y: 1)
                    print("Player \(currentGame.currentTurn!) is next")
                } else {
                    print("Player \(currentGame.currentTurn!) moved: 0,2")
                    fields[2][0].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 0, y: 2)
                    print("Player \(currentGame.currentTurn!) is next")
                }
            } else  if field.x <= fieldWidth! * 2 {
                if field.y <= fieldHeight! {
                    print("Player \(currentGame.currentTurn!) moved: 1,0")
                    fields[0][1].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 1, y: 0)
                    print("Player \(currentGame.currentTurn!) is next")
                } else if field.y <= fieldHeight! * 2 {
                    print("Player \(currentGame.currentTurn!) moved: 1,1")
                    fields[1][1].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 1, y: 1)
                    print("Player \(currentGame.currentTurn!) is next")
                } else {
                    print("Player \(currentGame.currentTurn!) moved: 1,2")
                    fields[2][1].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 1, y: 2)
                    print("Player \(currentGame.currentTurn!) is next")
                }
            } else  if field.x <= boardWidth!  {
                if field.y <= fieldHeight! {
                    print("Player \(currentGame.currentTurn!) moved: 2,0")
                    fields[0][2].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 2, y: 0)
                    print("Player \(currentGame.currentTurn!) is next")
                } else if field.y <= fieldHeight! * 2 {
                    print("Player \(currentGame.currentTurn!) moved: 2,1")
                    fields[1][2].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 2, y: 1)
                    print("Player \(currentGame.currentTurn!) is next")
                } else {
                    print("Player \(currentGame.currentTurn!) moved: 2,2")
                    fields[2][2].text = "\(currentGame.currentTurn!)"
                    currentGame.move(x: 2, y: 2)
                    print("Player \(currentGame.currentTurn!) is next")
                }
            }
        }
    }
}

struct Board {
    var currentTurn: String?
    var game = [["", "", ""], ["", "", ""], ["", "", ""]]
    
    init() {
        self.currentTurn = "X"
    }
    
    mutating func move(x: Int, y: Int) {
        if game[y][x].isEmpty {
            game[y][x] = currentTurn!
            
            if currentTurn! == "X" {
                currentTurn = "O"
            } else {
                currentTurn = "X"
            }
        }
    }
    
    func winner() -> Bool {
//        for slice in 0 ..< 5 {
//            print("Slice \(slice)");
//            let z = slice < 3 ? 0 : slice - 3 + 1;
//            for j in z ..< (slice - z) {
//                print("\(game[j][slice - j])");
//            }
//            print("\n");
//        }
//        
//        for y in 0...2 {
//            for x in 0...2 {
//                if !game[y][x].isEmpty {
//                    
//                }
//            }
//        }
        var winner: String?
        var game_over = false
        
        if game[0][0] == game[0][1] && game[0][0] == game[0][2] && !game[0][0].isEmpty {
            winner = "\(game[0][0]) has won the game!"
            game_over = true
        } else if game[1][0] == game[1][1] && game[1][0] == game[1][2] && !game[1][0].isEmpty{
            winner = "\(game[1][0]) has won the game!"
            game_over = true
        } else if game[2][0] == game[2][1] && game[2][0] == game[2][2] && !game[2][0].isEmpty {
            winner = "\(game[2][0]) has won the game!"
            game_over = true
        } else if game[0][0] == game[1][0] && game[0][0] == game[2][0] && !game[0][0].isEmpty {
            winner = "\(game[0][0]) has won the game!"
            game_over = true
        } else if game[0][1] == game[1][1] && game[0][1] == game[2][1] && !game[0][1].isEmpty {
            winner = "\(game[0][1]) has won the game!"
            game_over = true
        } else if game[0][2] == game[1][2] && game[0][2] == game[2][2] && !game[0][2].isEmpty {
            winner = "\(game[0][2]) has won the game!"
            game_over = true
        } else if game[0][0] == game[1][1] && game[0][0] == game[2][2] && !game[0][0].isEmpty {
            winner = "\(game[0][0]) has won the game!"
            game_over = true
        } else if game[0][2] == game[1][1] && game[0][2] == game[2][0] && !game[0][2].isEmpty {
            winner = "\(game[0][2]) has won the game!"
            game_over = true
        } else {
            winner = "No Winner"
        }
        
        print(winner!)
        return game_over
    }
}



var board = BoardView(boardWidth: 250.0, boardHeight: 250.0)
canvas.addSubview(board)

//var boardText = Board()

// Testing all the things
//boardText.currentTurn
//boardText.move(x: 0, y: 0)
//boardText.currentTurn
//boardText.move(x: 1, y: 0)
//boardText.currentTurn
//boardText.move(x: 1, y: 1)
//boardText.currentTurn
//boardText.move(x: 1, y: 2)
//boardText.currentTurn
//boardText.move(x: 2, y: 2)
//boardText.game
//boardText.winner()
