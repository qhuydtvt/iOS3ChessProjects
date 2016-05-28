//
//  Piece.m
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/25/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import "Piece.h"

@implementation Piece

- (instancetype)initWithPositionX:(int)x positionY:(int)y andColor:(COLOR)color;
{
    
    self = [super init];
    
    if (self) {
        self.positionX = x;
        self.positionY = y;
        self.pieceColor = &(color);
    }
    
    return self;
}

- (void)getMoveable;
{
    
}

- (COLOR)getPieceColor;
{
    return *(_pieceColor);
}

- (PIECE_TYPE)getPieceType;
{
    return *(_pieceType);
}


@end
