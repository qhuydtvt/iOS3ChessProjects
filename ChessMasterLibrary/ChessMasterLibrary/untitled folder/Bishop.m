//
//  Bishop.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Bishop.h"

@implementation Bishop

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.pieceType = (long*)PIECE_TYPE_BISHOP;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"Bishop Move valid");
    return YES;
}

@end
