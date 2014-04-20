//
//  Entity.h
//  Coredata
//
//  Created by elr on 14-4-20.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entity : NSManagedObject

@property (nonatomic, retain) NSNumber * attribute;
@property (nonatomic, retain) NSManagedObject *newRelationship;

@end
