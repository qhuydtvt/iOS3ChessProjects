//
//  PieceColor.h
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/25/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PIECE_COLOR)
{
    PIECE_COLOR_WHITE = 1,
    PIECE_COLOR_BLACK = 2
};

@interface PieceColor : NSObject

@property PIECE_COLOR PIECE_COLOR;

@end
