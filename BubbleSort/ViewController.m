//
//  ViewController.m
//  BubbleSort
//
//  Created by 冯攀 on 2019/12/20.
//  Copyright © 2019 冯攀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) NSMutableArray <NSObject *>*objArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int i = 0; i<15; i++) {
        int a = [self getRandomNumber:1 to:100];
        [self.objArray addObject:@(a)];
    }
    
    NSLog(@"self.objArray = %@",self.objArray);
    
    [self bubbleDescendingOrderSortWithArray:self.objArray];
    [self bubbleAscendingOrderSortWithArray:self.objArray];
    
}

-(int)getRandomNumber:(int)from to:(int)to{
    
    return (int)(from + (arc4random() % (to - from + 1)));
    //+1,result is [from to]; else is [from, to)!!!!!!!
    
}

-(NSMutableArray *)objArray{
    if (!_objArray) {
        _objArray = [NSMutableArray new];
    }
    return _objArray;
}

#pragma mark - 冒泡降序排序
- (void)bubbleDescendingOrderSortWithArray:(NSMutableArray *)descendingArr
{
    for (int i = 0; i < descendingArr.count; i++) {
        for (int j = 0; j < descendingArr.count - 1 - i; j++) {
            if ([descendingArr[j] intValue] < [descendingArr[j + 1] intValue]) {
                int tmp = [descendingArr[j] intValue];
                descendingArr[j] = descendingArr[j + 1];
                descendingArr[j + 1] = [NSNumber numberWithInt:tmp];
            }
        }
    }
    NSLog(@"冒泡降序排序后结果：%@", descendingArr);
}

#pragma mark - 冒泡升序排序
- (void)bubbleAscendingOrderSortWithArray:(NSMutableArray *)ascendingArr
{
    for (int i = 0; i < ascendingArr.count; i++) {
        for (int j = 0; j < ascendingArr.count - 1 - i;j++) {
            if ([ascendingArr[j+1]intValue] < [ascendingArr[j] intValue]) {
                int temp = [ascendingArr[j] intValue];
                ascendingArr[j] = ascendingArr[j + 1];
                ascendingArr[j + 1] = [NSNumber numberWithInt:temp];
            }
        }
    }
    NSLog(@"冒泡升序排序后结果：%@", ascendingArr);
}



@end
