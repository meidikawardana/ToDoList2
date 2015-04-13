//
//  ToDoItem.h
//  ToDoList2
//
//  Created by Meidika Wardana on 4/13/15.
//  Copyright (c) 2015 BEI5000. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
