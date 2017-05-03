//
//  QuestionManager.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init {
    
    if (self = [super init]) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0.0;
    for (Question *question in self.questions) {
        totalTime += [question answerTime];
    }
    
   //total time is for loop for questions in question array and add all the time together
    
    //avg time is count of questions in questionmanager questions array. divid total time by count
    
     
    NSString *timeOutputString = [NSString stringWithFormat:@"Total time: %.0fs, Average time: %.0fs",totalTime, (totalTime / [self.questions count])];
    return timeOutputString;
}

@end
