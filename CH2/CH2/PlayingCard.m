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
    return @[@"1",@"2",@"3",@"4"];
}

+ (NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+ (NSUInteger) maxRank
{
    return  0;
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
