//
//  TextStatsViewController.m
//  Attributor
//
//  Created by elr on 14-4-9.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "TextStatsViewController.h"

@interface TextStatsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlineLabel;

@end

@implementation TextStatsViewController



-(void)setTextToAnaylize:(NSAttributedString *)textToAnaylize
{
    _textToAnaylize = textToAnaylize;
    if (self.view.window)[self updateUI];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateUI];
}
- (NSAttributedString *)charsWithAttributes:(NSString *)attrName
{
    NSMutableAttributedString *chars = [[NSMutableAttributedString alloc] init];
    int index = 0 ;
    while (index < [self.textToAnaylize length]) {
        NSRange range;
        id value = [self.textToAnaylize attribute:attrName atIndex:index effectiveRange:&range];
        if (value) {
            [chars appendAttributedString:[self.textToAnaylize attributedSubstringFromRange:range]];
            index = range.location + range.length;
        }else{
            index ++;
        }
    }
    return chars;
}

-(void)updateUI
{
    self.colorLabel.text = [NSString stringWithFormat:@"%d colorful char ",[[self charsWithAttributes:NSForegroundColorAttributeName] length]];
    self.outlineLabel.text = [NSString stringWithFormat:@"%d outline char ",[[self charsWithAttributes:NSStrokeWidthAttributeName] length]];
}

//-(void)viewDidLoad
//{
//    [super viewDidLoad];
//    self.textToAnaylize = [[NSAttributedString alloc] initWithString:@"test" attributes:@{NSForegroundColorAttributeName:[UIColor greenColor],NSStrokeWidthAttributeName:@-3}];
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
