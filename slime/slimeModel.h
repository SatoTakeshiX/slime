//
//  sulaimModel.h
//  sulaim
//
//  Created by 佐藤 剛士 on 2014/01/23.
//  Copyright (c) 2014年 sato takeshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface slimeModel : NSObject{
   
    //@propertyと@synthesizeを書くことで自動で作成
    // NSString* _monsterName;
    // int _hitPoint;
   // NSString* _imageName;
    
}

@property(nonatomic,strong) NSString* monsterName;
@property(nonatomic) int hitPoint;
@property(nonatomic,strong) NSString* imageName;
-(int)attack:(int)point;
-(slimeModel *)initWithName:(NSString*)name;

@end
