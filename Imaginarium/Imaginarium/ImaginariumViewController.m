//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by elr on 14-4-17.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "ImaginariumViewController.h"
#import "ImageViewController.h"

@interface ImaginariumViewController ()

@end

@implementation ImaginariumViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://cloud-id.cn/img/%@.jpg",segue.identifier]];
        ivc.title = segue.identifier;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
