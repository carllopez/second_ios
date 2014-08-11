//
//  ToDoItem.h
//  empty
//
//  Created by Carlos Lopez on 8/11/14.
//  Copyright (c) 2014 Neat Coders. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
