//
//  DropitViewController.m
//  Dropit
//
//  Created by elr on 14-4-15.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "DropitViewController.h"

@interface DropitViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *collision;
@end

@implementation DropitViewController

static const CGSize DROP_SIZE = {40,40};
- (IBAction)tap:(id)sender {
    [self drop];
}

-(UICollisionBehavior *)collision
{
    if (!_collision) {
        _collision = [[UICollisionBehavior alloc] init];
        _collision.translatesReferenceBoundsIntoBoundary = YES;
        [self.animator addBehavior:_collision];
    }
    return _collision;
}
-(UIDynamicAnimator *) animator
{
    if (!_animator){
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
    }
    return _animator;
}

-(UIGravityBehavior *)gravity
{
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
        [self.animator addBehavior:_gravity];
    }
    return _gravity;
}

-(void)drop
{
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    int x = (arc4random()%(int)self.gameView.bounds.size.width) / DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView * dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
    [self.gravity addItem:dropView];
    [self.collision addItem:dropView];
}

-(UIColor *)randomColor
{
    switch (arc4random()%5) {
        case 0:return [UIColor grayColor];
        case 1:return [UIColor blackColor];
        case 2:return [UIColor redColor];
        case 3:return [UIColor greenColor];
        case 4:return [UIColor blueColor];
    }
    return nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
