//
//  Photo.h
//  Photomanio
//
//  Created by elr on 14-4-21.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Photo : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * subtitle;
@property (nonatomic, retain) NSString * imageUrl;
@property (nonatomic, retain) NSString * unique;
@property (nonatomic, retain) NSManagedObject *whoToke;

@end
