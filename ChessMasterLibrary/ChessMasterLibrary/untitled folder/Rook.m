//
//  Rook.m
//  Slot4_1
//
//  Created by TaHoangMinh on 4/2/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "Rook.h"

@implementation Rook

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.pieceType = (long*)PIECE_TYPE_ROOK;
    }
    return self;
}

- (BOOL)isMoveValid:(NSMutableArray *)arrChess
{
    NSLog(@"Rook Move valid");
    return YES;
}

@end
