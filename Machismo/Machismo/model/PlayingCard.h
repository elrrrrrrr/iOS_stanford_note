//
//  PlayingCard.h
//  CH2
//
//  Created by elr on 14-4-5.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface PlayingCard : Card

+ (NSArray *) validSuits;
+ (NSUInteger ) maxRank;

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
@end
