//
//  ScoreKeeper.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-02.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(instancetype)init {
    
    self = [super init];
    if (self) {
        _correctAnswers = 0;
        _incorrectAnswers = 0;
    }
    return self;
    
}

-(void)printScore {
    
    NSString *currentScore = [NSString stringWithFormat: @"Current Score: %lu right, %lu wrong ------ %0.2f%%",self.correctAnswers,self.incorrectAnswers,(float)self.correctAnswers / (self.correctAnswers + self.incorrectAnswers)*100];

    NSLog(@"%@",currentScore);
}

@end
