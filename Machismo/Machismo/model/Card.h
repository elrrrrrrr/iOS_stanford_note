//
//  Card.h
//  CH1
//
//  Created by elr on 14-4-4.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <Foundation/Foundation.h> // equal @import Foundation;

@interface Card : NSObject
@property (strong,nonatomic) NSString *contents; // what on the card
@property (nonatomic,getter = isChosen) BOOL chosen; //基础属性 不需 strong weak,getter rename
@property (nonatomic,getter = isMatched) BOOL matched; //基础属性 不需 strong weak

- (int)match:(Card*)card;

- (int)matchCards:(NSArray *)otherCards;
@end
