//
//  PieceType.m
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/25/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import "PieceType.h"

@implementation PieceType

- (instancetype)initWithType:(int)type
{
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}

- (NSString*)toString {
    NSString *str;
    switch (_type) {
        case 0:
        str = @"Pawn";
        break;
        case 1:
        str = @"Rook";
        break;
        case 2:
        str = @"Knight";
        break;
        case 3:
        str = @"Bishop";
        break;
        case 4:
        str = @"Queen";
        break;
        case 5:
        str = @"King";
        break;
    }
    return str;
}

@end
