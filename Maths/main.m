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

//The app should report the total play time. It should also report the average time it takes the player to answer a question. It should look something like this:
//total time: 60s, average time: 10s
//* Add other basic math operations like subtraction, multiplication, division


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        BOOL gameOn = YES;
    
        while (gameOn){
        AdditionQuestion *randomAdditionQuestion = [[AdditionQuestion alloc]init];
        NSLog(@"%@",[randomAdditionQuestion question]);
        NSString *parsedString = [InputHandler initiateUserInteraction];
        
        if ([parsedString  isEqualToString:@"quit"]) {
            gameOn = NO;
            continue;
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
