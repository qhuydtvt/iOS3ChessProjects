//
//  Map.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Map.h"
#import "BoardConfig.h"

@implementation Map

static id _instance = nil;
int board[BOARD_WIDTH][BOARD_HEIGHT];

+ (Map *)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(_instance == nil) {
            _instance = [[Map alloc]init];
        }
    });
    
    return _instance;
}

-(instancetype)init {
    self = [super init];
    for(int i = 0; i < BOARD_WIDTH; i++) {
        for(int j = 0; j < BOARD_HEIGHT; j++) {
            board[i][j] = 0;
        }
    }
    return self;
}

- (void)addPiece:(Piece *)piece; {
    /*  if piece is RED add 1 to board, if piece is BLACK add 2 to board  */
    if(piece) {
        if(piece.playerColor == RED) {
            board[piece.row][piece.column] = 1;
        }
        else if(piece.playerColor == BLACK) {
            board[piece.row][piece.column] = 2;
        }

    }
}

- (void)removePiece:(Piece *)piece; {
    if(piece) {
        board[piece.row][piece.column] = 0;
    }
}

- (int)getCellWithRow:(NSInteger)row Column:(NSInteger)column;{
   
    return board[row][column];
  
    return -1;
}


@end