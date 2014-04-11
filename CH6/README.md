控制器多态、导航、选项卡
=====================
控制器多态
-------
继承
storyboard 按住control＋shift ＋ 单机 
子类直接继承outlet 
多个MVC
------
UINavgationController
bar 按钮为NSArray items
toolbar toolbarItems NSArray
segue 控制跳转 push 需要navagation
手动pop
-(void)popViewControllerAnimated:(BOOL)animated
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"do something"]){
		if ([segue.destinationViewController isKindOfClass:[DoSomethingVC class]]){
			DoSomethingVC *doVC = (DoSomethingVC *)segue.destinationViewController;
			doVC.neededInfo = _;
		}
	}
}

阻止segue
-(BOOL)shouldPerfomSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"DoAparticularThing"]){
		return [self canDoAparticularThing] ? YES : NO;
	}
}
