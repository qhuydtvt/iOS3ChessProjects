//
//  Sy.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Advisor.h"

@implementation Advisor

- (id) initWithPositionX:(NSInteger)positionX PositionY:(NSInteger)positionY Color:(PlayerColor)color; {
//    self = [super initWithPositionX:positionX PositionY:self.positionY Color:self.playerColor];
    self = [super initWithPositionX:positionX PositionY:positionY Color:color];
   
//    if(self) {
//        self.type = SY;
//    }
    
    return self;
}

- (BOOL)checkMoveWithPositionX:(NSInteger)nextPositionX PositionY:(NSInteger)nextpositionY; {
    
    if(self.playerColor == RED) {
        if(nextPositionX >= 3 && nextPositionX <= 5 && nextpositionY >= 7 && nextpositionY <= 9){
            if([self checkMove:nextPositionX PositionY:nextpositionY]) {
                return YES;
            }else {
                return NO;
            }
        }
    }
    else if(self.playerColor == BLACK) {
        if(nextPositionX >= 3 && nextPositionX <= 5 && nextpositionY >= 0 && nextpositionY <= 2){
            if([self checkMove:nextPositionX PositionY:nextpositionY]) {
                return YES;
            }else {
                return NO;
            }
        }
    }
    
    return NO;
}


- (BOOL)checkMove:(NSInteger)nextPositionX PositionY:(NSInteger)nextPositionY {
    if(nextPositionX == self.row + 1 && ((nextPositionY == self.column + 1)
                                               || (nextPositionY == self.column - 1))) {
        return YES;
    }else if(nextPositionX == self.row - 1 && ((nextPositionY == self.column + 1)
                                                     || (nextPositionY == self.column - 1))) {
        return YES;
    }
    
    return FALSE;
}

@end
