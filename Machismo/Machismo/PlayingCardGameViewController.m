//
//  PlayingCardGameViewController.m
//  Machismo
//
//  Created by elr on 14-4-9.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"
@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createCard 
{
    return [[PlayingCardDeck alloc] init];
}

@end
