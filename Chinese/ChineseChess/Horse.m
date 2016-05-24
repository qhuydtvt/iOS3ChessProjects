//
//  Horse.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/23/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Horse.h"

@implementation Horse

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn; {
    [super checkMoveWithRow:nextRow Column:nextColumn];
    
    if(nextRow == self.row + 2) {
        if([self getCellFromBoard:self.row + 1 Column:self.column] == 0 ||
           [self getCellFromBoard:self.row - 1 Column:self.column] == 0 ) {
            return YES;
        }else {
            return NO;
        }
    }
    else if(nextColumn == self.column + 2) {
        if([self getCellFromBoard:self.row Column:self.column + 1] == 0 ||
           [self getCellFromBoard:self.row Column:self.column - 1] == 0 ) {
            return YES;
        }else {
            return NO;
        }
    }
    
    return NO;
}

@end