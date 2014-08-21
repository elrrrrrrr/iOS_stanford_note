视图控制器生命周期
===============
UITextView
----------
多行可编辑、选择文本域

通过NSMutableAttributedString设置

字体 UIFont

NSNotification
-------------

ViewController 生命周期
------------------

建立

设置outlet

appearing and disappering

Geometry changes

low-memory situations

after instantiation and outlet

viewDidload is called

always [super viewDidLoad]

just called once

不要在didload添加定位

viewWillAppear:

不添加一次性内容 （放在didload里）

主要进行同步

viewWillDisappear

对应didAppear

viewWill(did)LayoutSubview

屏幕旋转

didReceiveMemoryWarning

内存警告

awakeFromNib before MVC is "load"

NSNotification (radio)
--------------
NSNotificationCenter

    -(void)addObserver:(id)observer
    [center removeObserver:self]
