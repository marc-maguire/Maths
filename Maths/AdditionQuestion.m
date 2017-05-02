//
//  AdditionQuestion.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-02.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

//generate a random math question
//also handle answer to question
#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init {
    if (self = [super init]) {
        NSInteger firstRandomNumber = arc4random_uniform(100);
        firstRandomNumber += 10;
        NSInteger secondRandomNumber =arc4random_uniform(100);
        secondRandomNumber += 10;
        
       _question = [NSString stringWithFormat:@"What is the answer to %li + %li?",firstRandomNumber, secondRandomNumber];
        
        _answer = firstRandomNumber + secondRandomNumber;
    
    }
    return self;
}


@end