//
//  ViewController.m
//  CacheSizeCalculate
//
//  Created by zjsruxxxy3 on 15/4/14.
//  Copyright (c) 2015年 OC. All rights reserved.
//

#import "ViewController.h"
#import "FileTool.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  NSString *cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,  NSUserDomainMask, YES)lastObject];
    
    NSString *cacheFilePath = [cachePath stringByAppendingPathComponent:@"wrcj.plist"];
    
    NSInteger a = [FileTool singleFileSizeAtSinglePath:cacheFilePath];
    
    NSLog(@"%ldkb",a/1024);
    
    ;
    
    NSLog(@"%@",cachePath);
    
    NSString *file = [cachePath stringByAppendingPathComponent:@"icons"];
    
    
    float b = [FileTool folderFileSizeAtfolderPath:file];
    

    NSLog(@"%f",b);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
