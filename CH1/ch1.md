ios7 stanford leture note ch1 
============
上半部分
--------
课务信息
- 课程目标：编写app
- 课程时间：十周
课程要求
- 面向对象思想
- 基础语法
- 编程经验
ios组成
- Cocoa Touch
    触控层
    高级对象：多点触摸 动画 本地化 地图 提醒组建 

- Media
    媒体
    视频 图像 PDF OpenAL 

- Core Services
    核心服务层
    数组 字典 网络 Sqlite Url工具等 线程

- Core OS
    系统核心，unix系统
    包含套接字 Bonjour 文件系统 证书 证书

平台组成
- 工具
    xcode5 Instruments

- 语言
    Objc

- 框架
    Foundation Uikit CoreData CoreMotion


下半部分
--------
基础知识
- 设计模式
    MVC
    model view controller
    model 《 - 》view 不允许通信
    controller - 》view outlet
    controller －》model
    view ->  controller 包含target view中action 满足target 执行
    view ： should will did 委托给controller进行逻辑判断 不包含data
    view : data source 从 controller 获取数据
    model -> controller 不允许通信
    model 通过notification& kvo 广播和controller通信
    mvc可以多重嵌套
－ OBJC
    兼容C
    属性(Properties)：setter，getter访问实例方法
    h & m h文件公共API m文件私有API及实现
    函数声明无需顺序执行
    所有对象都在堆上 根据strong 自动释放
    可向nil指针发送消息
    nonatomic 不是线程安全，多个线程无法同时设置