//
//  ViewController.h
//  2
//
//  Created by Rawal Khirodkar on 20/05/15.
//  Copyright (c) 2015 Rawal Khirodkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>{
    // X or O img
    IBOutlet UIImage *o_img;
    IBOutlet UIImage *x_img;
    NSInteger player_num;
}

@property (weak, nonatomic) IBOutlet UIImageView *board;
@property (weak, nonatomic) IBOutlet UILabel *turn;
@property (weak, nonatomic) IBOutlet UIButton *rst;

@property (weak, nonatomic) IBOutlet UIImageView *b1;
@property (weak, nonatomic) IBOutlet UIImageView *b2;
@property (weak, nonatomic) IBOutlet UIImageView *b3;

@property (weak, nonatomic) IBOutlet UIImageView *b4;
@property (weak, nonatomic) IBOutlet UIImageView *b5;
@property (weak, nonatomic) IBOutlet UIImageView *b6;

@property (weak, nonatomic) IBOutlet UIImageView *b7;
@property (weak, nonatomic) IBOutlet UIImageView *b8;
@property (weak, nonatomic) IBOutlet UIImageView *b9;

-(IBAction)buttonrst:(UIButton *)sender;

-(void) update_label;
-(void) rstBoard;
-(int) check;

@end

