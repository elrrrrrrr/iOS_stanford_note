Views & 手势
============
VIEWS
-----------

一个view只包含一个superview、若干个subview

		-(UIView *)superview
		-(NSArry *)subviews

UIWindow 通常只有一个

通过代码新建

		-(void)addSubview:(UIView *)aView;
		-(void)removeFromSuperview;

每个vc包含一个view

初始化UIVEW
----------
awakeFromNib

		-(void)setup {....}
		-(void)awakeFromNib { [self setup]; }
		-(id)initWithWithFrame:(CGRect)aRect
		{
			self = [super initWithFrame:aRect];
			[self setup];
			return self;
		}

坐标
-----
- CGFloat 浮点数

- CGPoint

		CGPoint p = CGPointMake(34.5,22.0);
		p.x += 20;

- CGSize
		CGSize s = CGSizeMake(100.0,200.0);
		s.height +=50;

- CGRect  
  (包含一个CGPoint origin 和CGSize size)
- CGRect

		aRect = CGRectMake(45.0,75.5,100.0,100.0)

Views包含的三个坐标属性

1. CGRect bounds
2. CGPoint center
3. CGRect frame 在superview中的位置

创建view
--------

		CGRect labelRect = CGRectMake(20,20,50,30);
		UILabel *label = [[UILabel alloc] initWithFrame:labelRect];
		Label.text = @"Hello!";
		[self.view addSubview:label];

uiview 子类重载

		-(void)drawRect:(CGRect)aRect;
		不要调用drawRect

		-(void)setNeedsDisplay;
		-(void)setNeedsDisplayInRect:(CGRect)aRect;

建立形状自定义view

UIBezierPath

CoreGraphics


Gesture
--------

UIGestureRecognizer

两种方式：
1. view添加手势注册  yongyu controleer
2. 实现‘handle’ uiview自身

		-(void)setPannableView:(UIView *)pannableView
		{
			pannableView = pannableView;
			UIpanGestureRecognizer *pangr = [[UIPanGestureRecognizer alloc] initWithTarget:pannableView action:@selector(pan:)];
			[pannableView addGestureRecognizer:pangr];
		}

		-(void)pan:(UIPanGestureRecognizer *)recognizer
		{
			if ((recognizer.state == UIGestureRecognizerStateChanged) ||
				(recognizer.state == UIGestureRecognizerStateEnded)) {
				CGPoint translation = [recognizer translationInView:self];
				self.origin = CGPointMake(self.origin.x+translation,slef.origin.y+translation.y);
				[recognizer setTranslation:CGPointZero inView:self];
			}
		}
		//

		-(CGPoint) translationInView:(UIView *)aView;
		-(CGPoint)velocityInView:(UIView *)aView;
		-(void)setTranslation:(CGPoint)translation inView:(UIView *)aView;


- UIGestureRecognizer
- @property(readonly) UIGestureRecognizerState state;

1. possible 待命
2. Recognized 结束
3. Began 开始
4. Failed
5. Changed 改变
6. Ended

UIPinchGestureRecognizer

CGFloat scale;

CGFloat velocity;
