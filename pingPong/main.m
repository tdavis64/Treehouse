//
//  main.m
//  pingPong
//
//  Created by Thomas Davis on 5/17/16.
//  Copyright © 2016 Thomas Davis. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    int playerOneScore = 0;
    int playerTwoScore = 0;
    int pick;
    
    NSString *msg;
    
    enum playerMap
    {
        playerOne = 0,
        playerTwo = 1
    };
    
    while ((playerOneScore < 21 && playerTwoScore < 21) && ((playerOneScore - playerTwoScore) < 2 || (playerTwoScore - playerOneScore) < 2))
    {
        pick = arc4random()%2;
        
        if (pick == playerOne)
        {
            playerOneScore++;
        }
        else if (pick == playerTwo)
        {
            playerTwoScore++;
        }
        
        if ((playerOneScore >= 21) && (playerOneScore - playerTwoScore) >= 2)
        {
            msg = @"Player One Wins!";
        }
        else if ((playerTwoScore >= 21) && (playerTwoScore - playerOneScore) >= 2)
        {
            msg = @"Player Two Wins!";
        }
    }
    
    NSLog(@"%@", msg);
    
    return 0;
}
