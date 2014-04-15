协议、块、动画
============

协议
----
id <MyProtocol> obj
(通过@protocol Myprotocol定义)
@protocol Foo <Xyzzy,NSObject>
－(void)someMethod;
@optional
-(void)methodWithArgument:(BOOL)argument;
@property(readonly):(BOOL)argument;
@required
@end

协议语法
-------
@interface MyClass: NSObject <Foo>  //不需要重复声明方法
@end

or

@interface MyClass<Foo>

变量声明

id <Foo> obj = [[MyClass alloc] init];
or
-(void)method:(id <Foo>)obj;
@property (nonatomic,weak) id <Foo> obj;

协议使用
-------
delegates & dataSource
@property (nonatomic,weak) id <UISomeObjectDelegate> delegate;
@property (nonatomic,weak) id <UISomeObjectDataSource> dataSource;

block 
-----
block ＝ a block code 
［aDictionary enumerateKeyisAndObjectsUsingBlock:^(id key, id value,BOOL *stop){
	NSLog(@"value for key %@ is %@",key,value);
	if([@"ENOUGH" isEqualToString:key]) {
		*stop = YES;
	}
}］;
遍历所有元素,遇到ENOUTH中断
{}内代码可调用外部变量,但不能修改它们,除非用 __block 标记
__block BOOL stoppedEarly = NO;

block作用
--------
遍历
view动画
排序
通知
异常处理
结束异常

多线程
------
(GCD)API ： Grand Central Dispath

Animation
---------
animation views
一些列动画集合
transitions 
控制器跳转
core animation

view animation 方式
-----------
1.修改属性
frame 
transform
alpha
2.UIVew class method,blocks
+(void)animateWithDuration:(NSTimeInterval)duration
							delay:(NSTimeInterval)delay
							options:(UIViewAnimationOptions)options
							animations:(void(^)(void))animations
							completion:(void(^)(BOOL finished))completion;
ex
[UIView animateWithDuration:3.0
					  delay:0.0
					  options:UIviewAnimationOptionBeginFromCurrentState
					  animations:^{adView.alpha = 0.0 ;}
					  completion:^(BOOL fin) { if (fin) [myView removeFromSuperview]; }];
]

+(void)transitionWithView:

Dynamic Animation
----------------
步骤
创建UIDynamicAnimator
Add UIDynamicBehaviors (Gravity Collision Attachment)
Add UIDynamicItems to UIDynamicBehaviors







