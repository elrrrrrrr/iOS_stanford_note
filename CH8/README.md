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
{}内代码可调用外部变量,但不能修改它们
