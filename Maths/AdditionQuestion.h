//
//  AdditionQuestion.h
//  Maths
//
//  Created by Marc Maguire on 2017-05-02.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic,copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

- (NSTimeInterval)answerTime;


@end
