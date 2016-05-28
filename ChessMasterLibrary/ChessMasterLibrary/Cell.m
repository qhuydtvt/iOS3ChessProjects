//
//  Cell.m
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/27/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import "Cell.h"

@implementation Cell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCellState:(CELL_STATUS)cellState Color:(COLOR)cellColor andSize:(float)size;
{
    self = [super init];
    
    if (self) {
        self.cellState = cellState;
        self.cellColor = &(cellColor);
        self.SIZE = size;
        self.piece = nil;
    }
    
    return self;
}

- (Piece*)getPieceInCell;
{
    return _piece;
}

- (COLOR)getCellColor;
{
    return *(_cellColor);
}

- (CELL_STATUS)getCellState;
{
    return _cellState;
}

- (UIImage*)getImageBackGround;
{
    return _imageBackGround;
}
@end
