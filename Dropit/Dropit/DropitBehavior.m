//
//  DropitBehavior.m
//  Dropit
//
//  Created by elr on 14-4-15.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "DropitBehavior.h"
@interface DropitBehavior()
@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *collision;
@property (strong,nonatomic) UIDynamicItemBehavior *animationOptions;
@end
@implementation DropitBehavior

-(instancetype)init
{

    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collision];
    [self addChildBehavior:self.animationOptions];
    return self;
}

-(UIDynamicItemBehavior *)animationOptions
{
    if (!_animationOptions) {
        _animationOptions = [[UIDynamicItemBehavior alloc] init];
        _animationOptions.allowsRotation = NO;
    }
    return  _animationOptions;

}
-(UICollisionBehavior *)collision
{
    if (!_collision) {
        _collision = [[UICollisionBehavior alloc] init];
        _collision.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collision;
}

-(UIGravityBehavior *)gravity
{
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

-(void)addItem:(id<UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collision addItem:item];
    [self.animationOptions addItem:item];
}

-(void)removeItem:(id<UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collision removeItem:item];
    [self.animationOptions removeItem:item];
}

@end
