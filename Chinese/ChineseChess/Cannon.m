//
//  Cannon.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/24/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Cannon.h"
#import "BoardConfig.h"

@implementation Cannon

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn; {
    [super checkMoveWithRow:nextRow Column:nextColumn];
    /* Move horizontal */
    if(nextColumn == self.column && nextRow != self.row) {
        if(nextRow > self.row) {
            for(int i = (int)self.row + 1; i < nextRow - 1; i++) {
                if([self getCellFromBoard:i Column:self.column] != PIECE_EMPTY) {
                    return NO;
                }
            }
            return YES;
        }
        else if(nextRow < self.row) {
            for(int i = (int)nextRow + 1; i < self.row - 1; i++) {
                if([self getCellFromBoard:i Column:self.column] != PIECE_EMPTY) {
                    return NO;
                }
            }
            return YES;
        }
    }
    /* Move vertical */
    else if(nextRow == self.row && nextColumn != self.self.column) {
        if(nextColumn > self.column) {
            for(int i = (int)self.column + 1; i < nextColumn - 1; i++) {
                if([self getCellFromBoard:self.row Column:i] != PIECE_EMPTY) {
                    return NO;
                }
            }
            return YES;
        }
        else if(nextColumn < self.column) {
            for(int i = (int)nextColumn + 1; i < self.column - 1; i++) {
                if([self getCellFromBoard:self.row Column:i] != PIECE_EMPTY) {
                    return NO;
                }
            }
            return YES;
        }
    }
    
    return NO;

}

@end
