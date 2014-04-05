//
//  PlayingCardDeck.m
//  CH2
//
//  Created by elr on 14-4-5.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
//不要随意使用alloc 除非有init 不要重复调用init
@implementation PlayingCardDeck

- (instancetype) init //实例对象
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init] ;
                card.rank = rank ;
                card.suit = suit ;
                [self addCard:card];
            }
        }
    }
    
    return self;
}
@end
