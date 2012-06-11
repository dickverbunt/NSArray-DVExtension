//
//  NSArray+NSArray_extention.h
//
//  Created by Dick Verbunt on 6/2/12.
//  Copyright (c) 2012 Dickverbunt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (DVExtention)

- (id)firstObject; //Get fisrst object
- (NSArray *)shuffle; //Shuffles all objects in array
- (NSArray *)objectsNotInArray:(NSArray *)array; //returns items that are not in the array

@end
