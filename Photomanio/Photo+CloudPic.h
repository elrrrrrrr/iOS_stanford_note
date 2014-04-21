//
//  Photo+CloudPic.h
//  Photomanio
//
//  Created by elr on 14-4-21.
//  Copyright (c) 2014年 elr. All rights reserved.
//

#import "Photo.h"

@interface Photo (CloudPic)
+(Photo *)photoWithCloudInfo:(NSDictionary *)photoDictinary
       inManageObjectContext:(NSManagedObjectContext *)context;
+(void)loadPhotosFromCloudArry:(NSArray *)photos;
@end
