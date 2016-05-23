//
//  Piece.h
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerColor.h"
#import "BoardProvider.h"




@interface Piece : NSObject

@property NSInteger row;
@property NSInteger column;

@property NSInteger minX;
@property NSInteger maxX;
@property NSInteger minY;
@property NSInteger maxY;

@property (nonatomic, weak) id<BoardProvider> boardProvider;
@property PlayerColor playerColor;


- (id)initWithPositionX:(NSInteger)positionX PositionY:(NSInteger)positionY Color:(PlayerColor) color;

- (BOOL)checkMoveWithPositionX:(NSInteger)nextPositionX PositionY:(NSInteger)positionY;

- (void)moveToPositionX:(NSInteger)positionX PositionY:(NSInteger)positionY;

@end
