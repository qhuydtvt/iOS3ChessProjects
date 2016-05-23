//
//  Piece.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Piece.h"
#import "BoardProvider.h"
#import "BoardConfig.h"

@implementation Piece


- (instancetype)initWithX:(NSInteger)x Y:(NSInteger)y Color:(PlayerColor) color ; {
    
    self = [super init];
    if(self) {
        self.row = x;
        self.column = y;
        self.playerColor = color;
        self.minX = 0;
        self.maxX = BOARD_WIDTH - 1;
        self.minY = 0;
        self.maxY = BOARD_HEIGHT - 1;
    }
    
    return self;
}


- (BOOL)checkMoveWithPositionX:(NSInteger)nextPositionX PositionY:(NSInteger)nextpositionY; {
    
    /*  Check if next position is out of board */
    if(nextPositionX < self.minX  || nextPositionX > self.maxX) {
        return NO;
    }
    if(nextpositionY < self.minY || nextpositionY > self.maxY) {
        return NO;
    }
    
    /* Check whether a piece with the same color is at next position */
    PositionState positionState = [self.boardProvider getPieceColorAt:nextPositionX y:nextpositionY];
    if(_playerColor == RED && positionState == POSITION_RED) {
        return NO;
    }
    
    if(_playerColor == BLACK && positionState == POSITION_BLACK) {
        return NO;
    }
    
    return YES;
}

- (void)moveToPositionX:(NSInteger)positionX PositionY:(NSInteger)positionY; {
    if([self checkMoveWithPositionX:positionX PositionY:positionY]) {
        self.row = positionX;
        self.column = positionY;
    }
}


@end
