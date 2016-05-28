//
//  Map.h
//  ChessMasterLibrary
//
//  Created by Vinh Nguyen Dinh on 5/27/16.
//  Copyright © 2016 VinhNguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Bishop.h"
#import "King.h"
#import "Knight.h"
#import "Pawn.h"
#import "Queen.h"
#import "Rook.h"

@interface Map : NSObject

@property NSMutableArray *arrChess;
@property int SIZE_CHESS_BOARD;

@end
