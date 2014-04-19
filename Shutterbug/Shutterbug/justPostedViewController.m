//
//  justPostedViewController.m
//  Shutterbug
//
//  Created by elr on 14-4-19.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "justPostedViewController.h"

@interface justPostedViewController ()

@end

@implementation justPostedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self fetchPhotos];
    // Do any additional setup after loading the view.
}

-(void)fetchPhotos
{
    NSMutableArray *pics = [[NSMutableArray alloc] init];
    for (int i = 0; i<5; i++) {
        NSString *pic = [NSString stringWithFormat:@"http://cloud-id.cn/img/banner_%d.jpg",i];
        NSURL *picUrl = [NSURL URLWithString:pic];
        [pics insertObject:picUrl atIndex:0];
    }
    self.photos = pics;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
