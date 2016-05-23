//
//  Vua.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "King.h"
#import "Utilities.h"

@implementation King

- (id) initAdvisorWithX:(NSInteger)x Y:(NSInteger)y MinY:(NSInteger)minY MaxY:(NSInteger)maxY Color:(PlayerColor)color; {
    self = [super initWithX:x Y:y Color:color];
    if(self) {
        self.maxY = maxY;
        self.minY = minY;
        self.maxX = 5;
        self.minX = 3;
    }
    
    return self;
}

- (BOOL)checkMoveWithPositionX:(NSInteger)nextPositionX PositionY:(NSInteger)nextpositionY; {
    
    if(self.row == nextPositionX) {
        
    }
    return true;
}



@end
