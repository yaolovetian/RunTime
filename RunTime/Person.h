//
//  Person.h
//  RunTime
//
//  Created by yao on 2017/12/21.
//  Copyright © 2017年 yao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
}

- (void)sayHello;
- (void)eat;

@end
