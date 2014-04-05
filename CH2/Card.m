//
//  Card.m
//  CH1
//
//  Created by elr on 14-4-4.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card

//@synthesize contents = _contents;
//
//- (NSString *)contents
//{
//    return _contents;
//}
//
//- (void)setContents:(NSString *)contents
//{
//    _contents = contents;
//}
//自动实现
- (int)match:(Card *)card
{
    int score = 0 ;
    if ([card.contents isEqualToString:self.contents]) { //.只用于属性 ＝＝比较指针而不比较内容
        score = 1 ;
    }
    return score ;
    
}

- (int)matchCards:(NSArray *)otherCards
{
    int score = 0 ;
    for (Card * card in otherCards){
        if ([card.contents isEqualToString:self.contents]) { //.只用于属性 ＝＝比较指针而不比较内容
            score = 1 ;
        }
    }
    return score ;
    
}
@end
