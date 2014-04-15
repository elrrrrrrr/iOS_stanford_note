//
//  DropitBehavior.h
//  Dropit
//
//  Created by elr on 14-4-15.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior
-(void)addItem:(id <UIDynamicItem>)item;
-(void)removeItem:(id<UIDynamicItem>)item;
@end
