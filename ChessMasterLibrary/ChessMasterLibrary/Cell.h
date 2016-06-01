//
//  Cell.h
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/27/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Piece.h"

typedef NS_ENUM(NSInteger, CELL_STATUS)
{
    CELL_STATUS_NORMAL = 1,
    CELL_STATUS_SELECTED = 2,
    CELL_STATUS_MOVEABLE = 3

};

@interface Cell : UIButton

// properties
@property CELL_STATUS cellState;
@property COLOR *cellColor;
@property Piece *piece;
@property float SIZE;
@property UIImage *imageBackGround;

// method
- (instancetype)initWithCellState:(CELL_STATUS)cellState Color:(COLOR)cellColor andSize:(float)size;
- (Piece*)getPieceInCell;
- (COLOR)getCellColor;
- (CELL_STATUS)getCellState;
- (UIImage*)getImageBackGround;

@end
