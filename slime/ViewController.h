//
//  ViewController.h
//  slime
//
//  Created by satoutakeshi on 2014/04/30.
//  Copyright (c) 2014年 satoutakeshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slimeModel.h"

@interface ViewController : UIViewController

- (IBAction)createMonsters:(id)sender;
- (IBAction)attackButton1:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *monsterName1;
@property (weak, nonatomic) IBOutlet UILabel *monsterHitpoint1;
@property (weak, nonatomic) IBOutlet UIImageView *monsterImage1;
@property(strong,nonatomic) slimeModel* slime1;

- (IBAction)attackButton2:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *monsterName2;
@property (weak, nonatomic) IBOutlet UILabel *monsterHitpoint2;
@property (weak, nonatomic) IBOutlet UIImageView *monsterImage2;
@property(strong,nonatomic) slimeModel* slime2;
@end
