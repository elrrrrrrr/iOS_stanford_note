Multithreading & Scroll View
============================
QUEUES
------
blocks in queques

Main Queue
负责处理UI

executing a block on another queue

dispathc_queue_t queue = _;
dispath_async(queue,^{ });

获取 main queue

dispatch_queue_t mainQ＝ dispatch_get_main_queue()
NSOperationQueue *mainQ = [NSOperationQueue mainQueue];

创建 queue
dispatch_queue_t otherQ = dispatch_queue_create("name",NULL);

在main queue中调用方法
- (void)performSelectorOnMainThrea:(SEL)aMethod
							withObject:(id)obj
							waitUntiDone:(BOOL)waitUntilDone;
dispatch_async(dispatch_get_main_queue(),^{ /*call aMethod*/ });

Example:
NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL urlWithString:@"http://..."]];
NSURLConfiguration *configuration =  ..;
NSURLSession *session = ..;
NSURLSessionDownloadTask *task;
task = [session downloadTaskWithRequest:request
								completionHandler:^(NSURL *localfile,NSURLResponse *response,NSError *error){
								//

		}];

NSSession *session = [NSURLSeeion sessionWithConfiguration:configuration
									delegate:nil
									delegateQueue:[NSOperationQueue mainQueue];
					];
不要block main queue;

UIScrollView
------------
设置大小
scorllView.contentSize = CGSizeMake()
获取位置
CGpoint upperLeftOfVisible = scrollView.contentOffset;
获取bounds
CGrect visibleRect = [scrollView convertRect:scrollView.bounds toView:subview];
必须设置contentSize大小
scrollView.contentSize = imageView.bounds.size;
过渡效果
-(void)scrollRectToVisible:(CGRect)aRect animated:(BOOL)animated;

Zooming
-------
必须设置最小值和最大值
scrollView.minimumZoomScale = 0.5;
必须设置delegate
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)sender;
-(void)scrooViewDidEndZooming:withView:atScale

