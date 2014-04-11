//
//  PlayingCardView.h
//  SuperCard
//
//  Created by elr on 14-4-11.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong,nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;
@end
