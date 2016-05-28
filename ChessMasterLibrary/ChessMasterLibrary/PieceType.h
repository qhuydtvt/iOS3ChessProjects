//
//  PieceType.h
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/25/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PIECE_TYPE)
{
    PIECE_TYPE_PAWN = 1,
    PIECE_TYPE_ROOK = 2,
    PIECE_TYPE_KNIGHT = 3,
    PIECE_TYPE_BISHOP = 4,
    PIECE_TYPE_QUEEN = 5,
    PIECE_TYPE_KING = 6
};

@interface PieceType : NSObject

@property int type;
- (NSString*)toString;

@end
