//
//  sulaimModel.m
//  sulaim
//
//  Created by 佐藤 剛士 on 2014/01/23.
//  Copyright (c) 2014年 sato takeshi. All rights reserved.
//

#import "slimeModel.h"

@implementation slimeModel
@synthesize monsterName = _monsterName;
@synthesize hitPoint = _hitPoint;
@synthesize imageName = _imageName;

/**
 スライムのインスタンス
 */
-(slimeModel *)initWithName:(NSString*)name

{
    self = [super init];
    if(self){
        _monsterName = [NSString stringWithFormat:@"スライム%@",name];
        _hitPoint = 20;
        _imageName = [NSString stringWithFormat:@"N300_slime.png"];
    }
    
    
    NSLog(@"%@があらわれた!", _monsterName);
    return self;
    
}


/**
 hitPointを減らすメソッド
 */
-(int)attack:(int)hitPoint
{
    if (0 < hitPoint) {
        hitPoint = hitPoint - 1;
    }

    return hitPoint;
}

@end
