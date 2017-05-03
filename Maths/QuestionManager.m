//
//  QuestionManager.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init {
    
    if (self = [super init]) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0.0;
    for (AdditionQuestion *additionQuestion in self.questions) {
        totalTime += [additionQuestion answerTime];
    }
    
    //total time is for loop for questions in question array and add all the time together
    
    //avg time is count of questions in questionmanager questions array. divid total time by count
    
    
    NSString *timeOutputString = [NSString stringWithFormat:@"Total time: %fs, Average time: %fs",totalTime, (totalTime / [self.questions count])];
    return timeOutputString;
}

@end
