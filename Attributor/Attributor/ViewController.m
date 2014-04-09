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
- (IBAction)unoutlineButtonAction:(id)sender;

- (IBAction)outlineButtonAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *outlineButton;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableAttributedString *title =  [[NSMutableAttributedString alloc] initWithString:self.outlineButton.currentTitle];
    [title setAttributes:@{NSStrokeColorAttributeName:self.outlineButton.tintColor,NSStrokeWidthAttributeName:@3} range:NSMakeRange(0, title.length)];
    [self.outlineButton setAttributedTitle:title forState:UIControlStateNormal];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self usePreferredFonts];
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(preferredFontsChanged:) name:UIContentSizeCategoryDidChangeNotification object:nil];

}

- (void)preferredFontsChanged:(NSNotificationCenter *)notifications
{
    [self usePreferredFonts];
}
-(void)usePreferredFonts
{
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.headLine.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];
}
- (IBAction)changeBodyColor:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName value:sender.backgroundColor range:[self.body selectedRange]];
}

- (IBAction)unoutlineButtonAction:(id)sender {
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName range:[self.body selectedRange]];
}

- (IBAction)outlineButtonAction:(id)sender {
    [self.body.textStorage addAttributes:@{NSStrokeWidthAttributeName:@-3,NSStrokeColorAttributeName:[UIColor blackColor]} range:[self.body selectedRange]];
}
@end
