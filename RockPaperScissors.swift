// Created by: Julie Nguyen
// Created on: Sept 2018
// Created for: ICS4U
// Rock, paper, scissors game

import Foundation

let rock = 1, paper = 2, scissors = 3
let compNum = Int(arc4random_uniform(3) + 1)

print("Rock, paper, scissors, shoot! Choose your fighter and see who wins: \n\n  1 (rock)\n  2 (paper)\n  3 (scissors)")

let userInput = readLine()

if userInput == nil {
    print("-1 (error)")
}
else if let userChoice = Int(userInput!) {
    if userChoice == 1 && compNum == 2 {
        print("You chose rock. The computer chose paper. You lose!")
    }
    else if userChoice == 1 && compNum == 3 {
        print("You chose rock. The computer chose scissors. You win!")
    }
    else if userChoice == 2 && compNum == 3 {
        print("You chose paper. The computer chose scissors. You lose!")
    }
    else if userChoice == 2 && compNum == 1 {
        print("You chose paper. The computer chose rock. You win!")
    }
    else if userChoice == 3 && compNum == 1 {
        print("You chose scissors. The computer chose rock. You lose!")
    }
    else if userChoice == 3 && compNum == 2 {
        print("You chose scissors. The computer chose paper. You win!")
    }
    else if userChoice == compNum {
        print("You both chose the same move. It's a draw!")
    }
    else {
        print("-1 (error)")
    }
}
