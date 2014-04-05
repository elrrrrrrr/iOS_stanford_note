//
//  Deck.h
//  CH2
//
//  Created by elr on 14-4-5.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *) drawRandomCard; //not a property

- (void) addCard:(Card *)card;
//不允许参数重载

@end
