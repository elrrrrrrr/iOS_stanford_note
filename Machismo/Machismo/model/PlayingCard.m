//
//  PlayingCard.m
//  CH2
//
//  Created by elr on 14-4-5.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit; //需要修改setter和getter

+ (NSArray *) validSuits
{
    return @[@"♣︎",@"♥︎",@"♦︎",@"♠︎"];
}

+ (NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+ (NSUInteger) maxRank
{
    return  13;
}

- (int)matchCards:(NSArray *)otherCards
{
    int score =0;
    if ([otherCards count] ==1 ){
        id card = [otherCards firstObject];
        if ([card isKindOfClass:[PlayingCard class]]) {
            PlayingCard *otherCard = [otherCards firstObject];
            // [0] 时数组会崩溃
            if ([self.suit isEqualToString:otherCard.suit] ) {
                score = 1;
            } else if (self.rank == otherCard.rank) {
                score = 4;
            }
        }
    }
    return score;
}

- (NSString *)suit
{
    return _suit ? _suit:@"?";
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)contents
{

    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
//    return [NSString stringWithFormat:@"%d%@",self.rank,self.suit];
}

@end
