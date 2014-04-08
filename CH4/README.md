框架和带属性字符串
===========
objc
-----
创建对象
多数
[[OBJ alloc] init]
[[OBJ alloc] initwith]
类方法
[NSString format]
－（id）mutableCopy
将NSString 、Array变为可修改
返回值为空 返回nil

动态绑定
------
id类型 
id myObject; id是一个指针
不要使用(id *)
id通过协议及内省确保对消息做出反应
内省
isKindOfClass
isMemberOfClass
respondsToSelector
[obj isKindOfClass:[NSString class]]
[obj respondsToSelector:@selector(shootAt:)]

SEL
方法类型
SEL st = @selector(shoot) //shoot无参数

在obj 上 执行SEL方法
[obj perfomSelector:shootSelector];
[array makeObjectsPerformSelector:shootSelector]

- (void)addTarget:(id)obj action:(SEL)action ;

框架
-----
NSObject
-(NSString *) description  NSLog()

-(id)copy //并非都实现 可变数据copy后返回数组不可变
-(id)mutableCopy //并非都实现 返回都可变

NSArray 
不可变 strong 存储 @[] 初始化

-(NSUinterger)count
-(NSarray *)sortedArrayUsingSelector:(SEL)

NSMutableArray
+(id) arrayWithCapacity:()

NSNumber 
NSNumber *n = [NSNumber numberWithInt:36]
float f = [n floatValue]

NSData 二进制包
NSDate 
NSSet NSMutableSet
NSDictionary @{ k1:v1 } 初始化 可用中括号取值
NSUserDefaults 默认持久话字典 通过 synchronize 保存

属性列表 Property List

NSRange 范围 .location
UIColor 颜色 包括Alpha
UIFont 字体
UIFontDesciptor
NSAttributedString 样式字符串 不是NSString 
-(NSString *)string
包含属性   preferredFontWithTextStyle:




