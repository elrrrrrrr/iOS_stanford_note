//
//  DropitViewController.m
//  Dropit
//
//  Created by elr on 14-4-15.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "DropitViewController.h"
#import "DropitBehavior.h"

@interface DropitViewController () <UIDynamicAnimatorDelegate>
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong,nonatomic) DropitBehavior *dropitBehavior;

@end

@implementation DropitViewController

static const CGSize DROP_SIZE = {40,40};
- (IBAction)tap:(id)sender {
    [self drop];
}


-(void)dynamicAnimatorDidPause:(UIDynamicAnimator *)animator
{

    [self removeCompletedRow];

}
//- (void)dynamicAnimatorDidPause:(UIDynamicAnimator *)animator {
//    NSLog(@"pause");
//}

-(BOOL)removeCompletedRow
{
    
    NSMutableArray *dropsToRemove = [[NSMutableArray alloc] init];
    
    for (CGFloat y = self.gameView.bounds.size.height - DROP_SIZE.height/2 ; y>0 ; y -= DROP_SIZE.height) {
        BOOL rowIsComplete = YES;
        NSMutableArray *dropsFound = [[NSMutableArray alloc] init];
        for (CGFloat x = DROP_SIZE.width /2 ; x<= self.gameView.bounds.size.width - DROP_SIZE.width/2; x += DROP_SIZE.width) {
            UIView *hitView = [self.gameView hitTest:CGPointMake(x, y) withEvent:NULL];
            if ([hitView superview] == self.gameView) {
                [dropsFound addObject:hitView];
            } else {
                rowIsComplete = NO;
                break;
            }
        }
        if (![dropsFound count])   break;
        if (rowIsComplete) [dropsToRemove addObjectsFromArray:dropsFound];
    }
    
    if ([dropsToRemove count]) {
        for (UIView *drop in dropsToRemove) {
            [self.dropitBehavior removeItem:drop];
        }
        [self animateRemovingDrops:dropsToRemove];
    }

    return NO;
}

-(void)animateRemovingDrops:(NSArray *)dropsToRemove
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         for (UIView *drop in dropsToRemove) {
                             int x = (arc4random() % (int)(self.gameView.bounds.size.width * 5)) - (int)self.gameView.bounds.size.width * 2;
                             int y = self.gameView.bounds.size.height;
                             drop.center = CGPointMake(x, -y);
                         }
                     }
                     completion:^(BOOL finished){
                         [dropsToRemove makeObjectsPerformSelector:@selector(removeFromSuperview)];
                     }];
}

-(DropitBehavior *)dropitBehavior
{
    if (!_dropitBehavior) {

        _dropitBehavior = [[DropitBehavior alloc] init];
        [self.animator addBehavior:_dropitBehavior];

    }
    return _dropitBehavior;
}

-(UIDynamicAnimator *) animator
{
    if (!_animator){
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
        self.animator.delegate = self;
    }
    return _animator;
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
    [self.dropitBehavior addItem:dropView];


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
