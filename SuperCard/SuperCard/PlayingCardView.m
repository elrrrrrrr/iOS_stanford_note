//
//  PlayingCardView.m
//  SuperCard
//
//  Created by elr on 14-4-11.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView


-(void)setSuit:(NSString *)suit
{
    _suit = suit;
    [self setNeedsDisplay];
}
-(void)setRank:(NSUInteger)rank
{
    _rank = rank;
    [self setNeedsDisplay];
}
-(void)setFaceUp:(BOOL)faceUp
{
    _faceUp = faceUp;
    [self setNeedsDisplay];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
#define CORNER_FONT_STANDARD_HEIGHT 180.0
#define CORNER_RADIUS 12.0
-(CGFloat)cornerScaleFactor {return self.bounds.size.height / CORNER_FONT_STANDARD_HEIGHT;}
-(CGFloat)cornerRadius { return CORNER_RADIUS * [self cornerScaleFactor] ;}
-(CGFloat)cornerOffset { return [self cornerRadius] / 3.0 ;}
-(void)drawRect:(CGRect)rect
{
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:[self cornerRadius]];
    [roundedRect addClip];
    [[UIColor whiteColor] setFill];
    UIRectFill(self.bounds);
    
    [[UIColor blackColor] setStroke];
    [roundedRect stroke];
    [self drawCorners];
}

-(void)drawCorners
{
    NSMutableParagraphStyle *par = [[NSMutableParagraphStyle alloc] init];
    par.alignment = NSTextAlignmentCenter;
    UIFont *cor = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];

}

#pragma mark - init
-(void)setup
{
    self.backgroundColor = nil;
    self.opaque = NO;
    self.contentMode = UIViewContentModeRedraw;
}

-(void)awakeFromNib
{
    [self setup];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
