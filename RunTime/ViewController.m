//
//  ViewController.m
//  RunTime
//
//  Created by yao on 2017/12/21.
//  Copyright © 2017年 yao. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *person = [Person new];
    Class cla = person.class;
    const char* className = class_getName(cla);
    Class claSup = class_getSuperclass(cla);
    const char* superClassName = class_getName(claSup);
    BOOL isMetaSup = class_isMetaClass(claSup);
    BOOL isMetaSub = class_isMetaClass(cla);
    Class claI = class_getSuperclass(claSup);
    const char* claIName = class_getName(claI);
    printf("%s",claIName);
    printf("%s",className);
    NSLog(@"%s",superClassName);
    
    size_t claSize = class_getInstanceSize(cla);
    size_t claSupSize = class_getInstanceSize(claSup);
    size_t claISize = class_getInstanceSize(claI);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
