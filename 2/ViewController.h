//
//  ViewController.h
//  2
//
//  Created by Rawal Khirodkar on 20/05/15.
//  Copyright (c) 2015 Rawal Khirodkar. All rights reserved.
//

#import <UIKit/UIKit.h>

// my parent class is UIVIEWCONTROLLER
@interface ViewController : UIViewController <UIAlertViewDelegate>{
    // X or O img
    IBOutlet UIImage *o_img;
    IBOutlet UIImage *x_img;
    NSInteger player_num;
}
// IOutlet is for variable declaration. IB = Interface Builder.
// This objects appear on the IB, accessed by outlet mechanism in IB

// weak = no control over lifetime of the object it points to, strong has control
// atomic = thread-safe, nonatomic = not thread-safe.
// nonatomic used here because it is better performance wise.

// Lol!, I liked this answer
//A balloon will not fly away as long as at least one person is holding on to a string attached to it. The number of people holding strings is the retain count. When no one is holding on to a string, the ballon will fly away (dealloc). Many people can have strings to that same balloon. You can get/set properties and call methods on the referenced object with both strong and weak references.
//
//A strong reference is like holding on to a string to that balloon. As long as you are holding on to a string attached to the balloon, it will not fly away.
//
//A weak reference is like looking at the balloon. You can see it, access it's properties, call it's methods, but you have no string to that balloon. If everyone holding onto the string lets go, the balloon flies away, and you cannot access it anymore.

// Creating some objects :)
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


// IBAction is alias for void, it takes events from the IB
-(IBAction)buttonrst:(UIButton *)sender;

-(void) update_label;
-(void) rstBoard;
-(int) check;

@end

