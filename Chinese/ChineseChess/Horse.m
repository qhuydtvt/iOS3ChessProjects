//
//  Horse.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/23/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Horse.h"
#import "BoardConfig.h"

@implementation Horse

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn; {
    [super checkMoveWithRow:nextRow Column:nextColumn];
    
    if(labs(nextRow - self.row) == 2 && labs(nextColumn - self.column) == 1) {
        if([self getCellFromBoard:self.row + 1 Column:self.column] == PIECE_EMPTY ||
           [self getCellFromBoard:self.row - 1 Column:self.column] == PIECE_EMPTY ) {
            return YES;
        }else {
            return NO;
        }
    }
    else if(labs(nextRow - self.row) == 1 && labs(nextColumn - self.column) == 2) {
        if([self getCellFromBoard:self.row Column:self.column + 1] == PIECE_EMPTY ||
           [self getCellFromBoard:self.row Column:self.column - 1] == PIECE_EMPTY ) {
            return YES;
        }else {
            return NO;
        }
    }
    
    return NO;
}

@end
