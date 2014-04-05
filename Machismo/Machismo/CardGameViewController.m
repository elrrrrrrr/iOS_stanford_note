//
//  CardGameViewController.m
//  Machismo
//
//  Created by elr on 14-4-5.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@property (strong,nonatomic) PlayingCardDeck *playingCard ;

@end

@implementation CardGameViewController
- (PlayingCardDeck *) playingCard
{
    return _playingCard ? _playingCard : [[PlayingCardDeck alloc] init ];
}
- (void) setFlipsCount:(int)flipsCount
{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips :%d",flipsCount];
    NSLog(@"flipcount  =  %d",flipsCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        [sender setTitle:    [[self.playingCard drawRandomCard] contents] forState:UIControlStateNormal];
    }
    self.flipsCount ++;

}


@end
