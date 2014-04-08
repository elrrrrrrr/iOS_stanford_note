//
//  ViewController.m
//  Attributor
//
//  Created by elr on 14-4-8.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headLine;
- (IBAction)changeBodyColor:(UIButton *)sender;

- (IBAction)outlineButtonAction:(id)sender;


@end

@implementation ViewController

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


- (IBAction)changeBodyColor:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName value:sender.backgroundColor range:[self.body selectedRange]];
}

- (IBAction)outlineButtonAction:(id)sender {
    [self.body.textStorage addAttributes:@{NSStrokeWidthAttributeName:@-3,NSStrokeColorAttributeName:[UIColor blackColor]} range:[self.body selectedRange]];
}
@end
