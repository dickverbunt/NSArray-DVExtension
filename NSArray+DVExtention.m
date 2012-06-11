//
//  NSArray+NSArray_extention.m
//
//  Created by Dick Verbunt on 6/2/12.
//  Copyright (c) 2012 Dickverbunt. All rights reserved.
//

#import "NSArray+DVExtention.h"

@implementation NSArray (DVExtention)

- (id)firstObject
{
	if (self.count > 0) {
		return [self objectAtIndex:0];
	}
	
	return nil;
}

- (NSArray *)objectsNotInArray:(NSArray *)array
{
	NSMutableArray *tmpArray = [NSMutableArray array];
	
	for (id object in self)
	{
		if(![array containsObject:object])
		{
			[tmpArray addObject:object];
		}
	}
	
	return [NSArray arrayWithArray:tmpArray];
}

- (NSArray *)shuffle
{
	NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:[self count]];
	for (id object in self)
	{
		NSUInteger randomPosition = arc4random() % (tmpArray.count + 1);
		[tmpArray insertObject:object atIndex:randomPosition];
	}
	
	return [NSArray arrayWithArray:tmpArray];
}

@end