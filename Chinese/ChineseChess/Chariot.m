//
//  Chariot.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/24/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Chariot.h"

@implementation Chariot

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn; {
    [super checkMoveWithRow:nextRow Column:nextColumn];
    /* Move vertical */
    if(nextColumn == self.column && nextRow != self.row) {
        [self checkBarrierWithPoint1:self.row Point2:nextRow Direction:@"vertical"];
    }
    /* Move horizontal */
    else if(nextRow == self.row && nextColumn != self.self.column) {
        [self checkBarrierWithPoint1:self.column Point2:nextColumn Direction:@"horizontal"];
    }
    
    return NO;
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
        if([self getCellFromBoard:i Column:self.column] != 0 && [direction isEqualToString:@"vertical"]) {
            return NO;
        }
        else if([self getCellFromBoard:self.row Column:i] != 0 && [direction isEqualToString:@"horizontal"]){
            return NO;
        }
        
    }
    
    
    return YES;
}

@end
