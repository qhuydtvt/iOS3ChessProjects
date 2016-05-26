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
    BOOL canMove = NO;
    
    if([self getCellFromBoard:nextRow Column:nextColumn] != PIECE_EMPTY) {
        /* Move vertical */
        if(nextColumn == self.column && nextRow != self.row) {
            canMove = [self checkEatWithPoint1:self.row Point2:nextRow Direction:@"vertical"];
        }
        /* Move horizontal */
        else if(nextRow == self.row && nextColumn != self.self.column) {
            canMove = [self checkEatWithPoint1:self.column Point2:nextColumn Direction:@"horizontal"];
        };
        
    }
    else if([self getCellFromBoard:nextRow Column:nextColumn] == PIECE_EMPTY) {
        /* Move vertical */
        if(nextColumn == self.column && nextRow != self.row) {
            canMove = [self checkBarrierWithPoint1:self.row Point2:nextRow Direction:@"vertical"];
        }
        /* Move horizontal */
        else if(nextRow == self.row && nextColumn != self.self.column) {
            canMove = [self checkBarrierWithPoint1:self.column Point2:nextColumn Direction:@"horizontal"];
        }
    }
    
    return canMove;

}

- (BOOL)checkEatWithPoint1:(NSInteger)point1 Point2:(NSInteger)point2 Direction:(NSString *)direction{
    int start = 0;
    int end = 0;
    if(point1 < point2){
        start = (int)point1;
        end = (int)point2;
    }else{
        start = (int)point2;
        end = (int)point1;
    }
    
    int count = 0;
    
    for(int i = start + 1; i < end; i++){
        if([self getCellFromBoard:i Column:self.column] != PIECE_EMPTY && [direction isEqualToString:@"vertical"]) {
            count ++;
        }
        else if([self getCellFromBoard:self.row Column:i] != PIECE_EMPTY && [direction isEqualToString:@"horizontal"]){
            count ++;
        }
        
    }
    
    if(count == 1){
        return YES;
    }else {
        return NO;
    }
    
}


- (BOOL)checkBarrierWithPoint1:(NSInteger)point1 Point2:(NSInteger)point2 Direction:(NSString *)direction{
    int start = 0;
    int end = 0;
    if(point1 < point2){
        start = (int)point1;
        end = (int)point2;
    }else{
        start = (int)point2;
        end = (int)point1;
    }
    
    
    for(int i = start + 1; i < end; i++){
        if([self getCellFromBoard:i Column:self.column] != PIECE_EMPTY && [direction isEqualToString:@"vertical"]) {
            return NO;
        }
        else if([self getCellFromBoard:self.row Column:i] != PIECE_EMPTY && [direction isEqualToString:@"horizontal"]){
            return NO;
        }
        
    }
    
    
    return YES;
}




@end
