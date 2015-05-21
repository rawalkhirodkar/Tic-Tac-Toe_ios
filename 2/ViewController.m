//
//  ViewController.m
//  2
//
//  Created by Rawal Khirodkar on 20/05/15.
//  Copyright (c) 2015 Rawal Khirodkar. All rights reserved.
//

#import "ViewController.h"
//----------------------------------------------------------------------------------------------------------------------------------------------------
@interface ViewController ()

@end
//----------------------------------------------------------------------------------------------------------------------------------------------------
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    o_img = [UIImage imageNamed:@"o.png"];
    x_img = [UIImage imageNamed:@"x.png"];
    
    player_num = 1;
    self.turn.text = @"X to play first!";
} // intialize stuff, player 1 is "X" and player 2 is "O"

//--------------------------------------------------------------------------------------------------------------------------------------------------------
// pls look into check function below for full understanding
- (void) update_label{
    int temp = [self check];
    if (temp == 0){
        if(player_num == 1){
            player_num = 2;
            self.turn.text = @"O to play!";
            NSLog(@"player_num = %d",(int)player_num); //to debug
        
        }
    
        else if(player_num == 2){
            player_num = 1;
            self.turn.text = @"X to play!";
            NSLog(@"player_num = %d",(int)player_num); //to debug
        }
    }
    
    if(temp == 1){
        UIAlertView *won = [[UIAlertView alloc]initWithTitle:@"We have a winner!" message:@"Player 1 wins!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        won.tag = 99;
        [won show];
        //[self rstBoard];
    } // X won
    
    if(temp == 2){
        UIAlertView *won = [[UIAlertView alloc]initWithTitle:@"We have a winner!" message:@"Player 2 wins!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
         won.tag = 99;
        [won show];
        //[self rstBoard];

    } // O won
    
    if(temp == 3){
        UIAlertView *won = [[UIAlertView alloc]initWithTitle:@"Well its a Draw!" message:@"Try again?" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
         won.tag = 99;
        [won show];
        //[self rstBoard];
        
    } // Draw

} // function which updates label which says whose turn to play

//----------------------------------------------------------------------------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//----------------------------------------------------------------------------------------------------------------------------------------------------
- (IBAction)buttonrst:(UIButton *)sender{
    [self rstBoard];
}// reset button

//----------------------------------------------------------------------------------------------------------------------------------------------------
- (void)rstBoard {
    NSLog(@"Reset called"); //to debug
    //to clear the played boxs if any and reset player info
    self.b1.image = NULL;
    self.b2.image = NULL;
    self.b3.image = NULL;
    
    self.b4.image = NULL;
    self.b5.image = NULL;
    self.b6.image = NULL;

    self.b7.image = NULL;
    self.b8.image = NULL;
    self.b9.image = NULL;
    
    player_num = 1;
    self.turn.text = @"X to play first!";
    
} // starts from scratch

//----------------------------------------------------------------------------------------------------------------------------------------------------
// handles touched on the screen
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject]; // touch is var which stores the info where the touch occured on the screen
    
    if(CGRectContainsPoint([self.b1 frame], [touch locationInView:self.view])){
        if(self.b1.image == NULL){
            if(player_num == 1){
                self.b1.image = x_img;
            }
            else{
                self.b1.image = o_img;
            } // b1 was touched
        [self update_label]; // change player info
        }

    }
    //------------------------------------------------
    if(CGRectContainsPoint([self.b2 frame], [touch locationInView:self.view])){
        if(self.b2.image == NULL){
            if(player_num == 1){
                self.b2.image = x_img;
            }
            else{
                self.b2.image = o_img;
            } // b2 was touched
        [self update_label]; // change player info
        }

    }
    //-------------------------------------------------
    if(CGRectContainsPoint([self.b3 frame], [touch locationInView:self.view])){
        if(self.b3.image == NULL){
            if(player_num == 1){
                self.b3.image = x_img;
            }
            else{
                self.b3.image = o_img;
            } // b3 was touched
        [self update_label]; // change player info
        }

    }
    //------------------------------------------------
    if(CGRectContainsPoint([self.b4 frame], [touch locationInView:self.view])){
        if(self.b4.image == NULL){
            if(player_num == 1){
                self.b4.image = x_img;
            }
            else{
                self.b4.image = o_img;
            } // b4 was touched
        [self update_label]; // change player info
        }

    }
    //------------------------------------------------
    if(CGRectContainsPoint([self.b5 frame], [touch locationInView:self.view])){
        if(self.b5.image == NULL){
            if(player_num == 1){
                self.b5.image = x_img;
            }
            else{
                self.b5.image = o_img;
            } // b5 was touched
        [self update_label]; // change player info
        }

    }

    //------------------------------------------------
    if(CGRectContainsPoint([self.b6 frame], [touch locationInView:self.view])){
        if(self.b6.image == NULL){
            if(player_num == 1){
                self.b6.image = x_img;
            }
            else{
                self.b6.image = o_img;
            } // b6 was touched
        [self update_label]; // change player info
        }
    }

    //------------------------------------------------
    if(CGRectContainsPoint([self.b7 frame], [touch locationInView:self.view])){
        if(self.b7.image == NULL){
            if(player_num == 1){
                self.b7.image = x_img;
            }
            else{
                self.b7.image = o_img;
            } // b7 was touched
        [self update_label]; // change player info
        }
    }

    //------------------------------------------------
    if(CGRectContainsPoint([self.b8 frame], [touch locationInView:self.view])){
        if(self.b8.image == NULL){
            if(player_num == 1){
                self.b8.image = x_img;
            }
            else{
                self.b8.image = o_img;
            } // b8 was touched
        [self update_label]; // change player info
        }

    }
    //------------------------------------------------
    if(CGRectContainsPoint([self.b9 frame], [touch locationInView:self.view])){
        if(self.b9.image == NULL){
            if(player_num == 1){
                self.b9.image = x_img;
            }
            else{
                self.b9.image = o_img;
            } // b9 was touched
        [self update_label]; // change player info
        }
    }

    //------------------------------------------------
    
}

//----------------------------------------------------------------------------------------------------------------------------------------------------
// function which checks for win and draw
- (int) check{
    // return 1 => player 1 won, return 2 => player 2 and return 0 => no one and return 3 => draw
    
    // first a check for horizontal win
    if((self.b1.image == self.b2.image) && (self.b2.image == self.b3.image)){
        if(self.b1.image == x_img){return 1;}
        if(self.b1.image == o_img){return 2;}
    }
    
    if((self.b4.image == self.b5.image) && (self.b5.image == self.b6.image)){
        if(self.b4.image == x_img){return 1;}
        if(self.b4.image == o_img){return 2;}
    }
    
    if((self.b7.image == self.b8.image) && (self.b8.image == self.b9.image)){
        if(self.b7.image == x_img){return 1;}
        if(self.b7.image == o_img){return 2;}
    }
    
    //------------------------------------------
    //vertical check
    if((self.b1.image == self.b4.image) && (self.b4.image == self.b7.image)){
        if(self.b1.image == x_img){return 1;}
        if(self.b1.image == o_img){return 2;}
    }
    
    if((self.b2.image == self.b5.image) && (self.b5.image == self.b8.image)){
        if(self.b2.image == x_img){return 1;}
        if(self.b2.image == o_img){return 2;}
    }
    
    if((self.b3.image == self.b6.image) && (self.b6.image == self.b9.image)){
        if(self.b3.image == x_img){return 1;}
        if(self.b3.image == o_img){return 2;}
    }
    
    //------------------------------------------
    //diagonal check
    if((self.b1.image == self.b5.image) && (self.b5.image == self.b9.image)){
        if(self.b1.image == x_img){return 1;}
        if(self.b1.image == o_img){return 2;}
    }
    
    if((self.b3.image == self.b5.image) && (self.b5.image == self.b7.image)){
        if(self.b3.image == x_img){return 1;}
        if(self.b3.image == o_img){return 2;}
    }
    
    //------------------------------------------
    // draw check
    if(self.b1.image != NULL && self.b2.image != NULL && self.b3.image != NULL && self.b4.image != NULL && self.b5.image != NULL && self.b6.image != NULL && self.b7.image != NULL && self.b8.image != NULL && self.b9.image != NULL){
        return 3;
    }
    return 0;
    
}
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// ok this is not working, make it work!

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(alertView.tag == 99){
        [self rstBoard];
        if(buttonIndex == 0){
            [self rstBoard];
        }
        if(buttonIndex == -1){
            [self rstBoard];
        }
    }
}


@end
