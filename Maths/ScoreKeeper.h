//
//  ScoreKeeper.h
//  Maths
//
//  Created by Marc Maguire on 2017-05-02.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger correctAnswers;
@property (nonatomic) NSInteger incorrectAnswers;

-(void)printScore;

@end
