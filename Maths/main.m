//
//  main.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-02.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

//Goals
//To create a command line game called Maths that will generate a random addition question
//To prompt the user to input their answer
//To parse the user's inputted answer and convert it to a primitive NSInteger
//The app will log "Right!" for correct and "Wrong!" for incorrect answers
//The app will present the next question immediately after the app outputs the evaluation of the user's input (for now there's no exit option)
//To add the ability to exit the game
//To add a scoring function to the game

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        BOOL gameOn = YES;
    
        while (true){
        AdditionQuestion *randomAdditionQuestion = [[AdditionQuestion alloc]init];
        NSLog(@"%@",[randomAdditionQuestion question]);
        InputHandler *inputHandler = [[InputHandler alloc]init];
        NSString *parsedString = [inputHandler initiateUserInteraction];
        
        if ([parsedString  isEqualToString:@"quit"]) {
            gameOn = NO;
            break;
        } else {
        
            if (randomAdditionQuestion.answer == [parsedString intValue]){
                scoreKeeper.correctAnswers += 1;
                [scoreKeeper printScore];
            } else {
                scoreKeeper.incorrectAnswers += 1;
                [scoreKeeper printScore];

            }
            }

    
    }
}
    return 0;
}
