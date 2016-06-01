//
//  Map.m
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/27/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import "Map.h"

@implementation Map

- (instancetype)init
{
    self = [super init];
    if (self) {
        _SIZE_CHESS_BOARD = 8;
        for(int i = 0; i < _SIZE_CHESS_BOARD; i++) {
            for(int j = 0; j < _SIZE_CHESS_BOARD; j++) {
                Cell *cell;
                if(i % 2 == 0) {
                    if((i + j) % 2 == 0) {
                        cell = [[Cell alloc]initWithCellState:CELL_STATUS_NORMAL Color:COLOR_WHITE andSize:40];
                    }
                    else {
                        cell = [[Cell alloc]initWithCellState:CELL_STATUS_NORMAL Color:COLOR_BLACK andSize:40];
                    }
                }
                else {
                    if((i + j) % 2 == 0) {
                        cell = [[Cell alloc]initWithCellState:CELL_STATUS_NORMAL Color:COLOR_BLACK andSize:40];
                    }
                    else {
                        cell = [[Cell alloc]initWithCellState:CELL_STATUS_NORMAL Color:COLOR_WHITE andSize:40];
                    }
                }
                if(i == 0  || i == 1 || i == 6 || i == 7) {
                    
                }
                else {
                    
                }
            }
        }
    }
    return self;
}

@end
