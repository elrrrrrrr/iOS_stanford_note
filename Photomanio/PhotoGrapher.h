//
//  PhotoGrapher.h
//  Photomanio
//
//  Created by elr on 14-4-21.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photo;

@interface PhotoGrapher : NSManagedObject

@property (nonatomic, retain) Photo *photos;

@end
