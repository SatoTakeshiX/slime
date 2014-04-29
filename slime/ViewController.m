//
//  ViewController.m
//  slime
//
//  Created by satoutakeshi on 2014/04/30.
//  Copyright (c) 2014年 sato takeshi. All rights reserved.
//  素材提供：-JUNKIE Junk Shop-
//  http://www.junkie-chain.jp/main.html
//

#import "ViewController.h"


@interface ViewController ()


@end

@implementation ViewController

@synthesize monsterName1 = _monsterName1;
@synthesize monsterHitpoint1 = _monsterHitpoint1;
@synthesize monsterImage1 = _monsterImage1;
@synthesize slime1 = _slime1;

@synthesize monsterName2 = _monsterName2;
@synthesize monsterHitpoint2 = _monsterHitpoint2;
@synthesize monsterImage2 = _monsterImage2;
@synthesize slime2 = _slime2;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createMonsters:(id)sender {
    
    if (!self.slime1 && !self.slime2) {
        //スライム１をインスタンスする
        self.slime1 = [[slimeModel alloc] initWithName:@"A"];
        //viewの更新
        //画像データをUIImageで作成
        UIImage *monImage1 = [UIImage imageNamed:self.slime1.imageName];
        //画像の差し替え
        self.monsterImage1.image = monImage1;
        
        //モンスター名の表示
        self.monsterName1.text = self.slime1.monsterName;
        //ヒットポイントの表示
        self.monsterHitpoint1.text = [NSString stringWithFormat:@"ヒットポイント:%d", self.slime1.hitPoint];
        
        
        //スライム2をインスタンスする
        self.slime2 = [[slimeModel alloc] initWithName:@"B"];
        UIImage *monImage2 = [UIImage imageNamed:self.slime2.imageName];
        self.monsterImage2.image = monImage2;
        self.monsterName2.text = self.slime2.monsterName;
        self.monsterHitpoint2.text = [NSString stringWithFormat:@"ヒットポイント:%d", self.slime2.hitPoint];
    }
    
}
- (IBAction)attackButton1:(id)sender {
    //slime2のインスタンスがないなら実行しない
    if (!self.slime2)return;
    
    int hitpoint = [self.slime2 attack:self.slime2.hitPoint];
    //プロパティの更新
    self.slime2.hitPoint = hitpoint;
    self.monsterHitpoint2.text = [NSString stringWithFormat:@"ヒットポイント:%d", hitpoint];
}
- (IBAction)attackButton2:(id)sender {
    //slime1のインスタンスがないなら実行しない
    if (!self.slime1)return;
    
    int hitpoint = [self.slime1 attack:self.slime1.hitPoint];
    //プロパティの更新
    self.slime1.hitPoint = hitpoint;
    self.monsterHitpoint1.text = [NSString stringWithFormat:@"ヒットポイント:%d", hitpoint];
}
@end
