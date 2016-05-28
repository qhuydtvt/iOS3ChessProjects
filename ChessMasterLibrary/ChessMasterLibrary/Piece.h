//
//  Piece.h
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/25/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, COLOR)
{
    COLOR_WHITE = 1,
    COLOR_BLACK = 2
};

typedef NS_ENUM(NSInteger, PIECE_TYPE)
{
    PIECE_TYPE_PAWN = 1,
    PIECE_TYPE_ROOK = 2,
    PIECE_TYPE_KNIGHT = 3,
    PIECE_TYPE_BISHOP = 4,
    PIECE_TYPE_QUEEN = 5,
    PIECE_TYPE_KING = 6
};


@interface Piece : NSObject

// properties
@property COLOR *pieceColor;
@property PIECE_TYPE *pieceType;
@property int positionX;
@property int positionY;
@property BOOL isDead;

// method
- (instancetype)initWithPositionX:(int)x positionY:(int)y andColor:(COLOR)color;
- (void)getMoveable;
- (COLOR)getPieceColor;
- (PIECE_TYPE)getPieceType;
- (BOOL)isMoveValid:(NSMutableArray *)arrChess;
@end
