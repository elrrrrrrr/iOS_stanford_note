//
//  BazierPaseView.m
//  Dropit
//
//  Created by elr on 14-4-16.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "BazierPaseView.h"

@implementation BazierPaseView


-(void)setPath:(UIBezierPath *)path
{
    _path = path;
    [self setNeedsDisplay];
}
-(void)drawRect:(CGRect)rect
{
    [self.path stroke];
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
