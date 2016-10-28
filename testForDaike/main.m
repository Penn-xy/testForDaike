//
//  main.m
//  testForDaike
//
//  Created by Yupeng on 16/10/28.
//  Copyright © 2016年 Yupeng. All rights reserved.
//

#import <Foundation/Foundation.h>


NSArray* productArray(NSArray<NSNumber*>*initFigureArray) {
    __block int l = 1;
    __block NSMutableArray *finallyArr = [NSMutableArray array];
    [initFigureArray enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        l *= obj.integerValue;
    }];
    
    [initFigureArray enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [finallyArr addObject:[NSNumber numberWithInt:l/obj.intValue]];
    }];
    
    return finallyArr.copy;
}

NSArray* numberFirst(NSMutableArray<NSNumber*>*initFigureArray) {
    NSNumber *zero = [NSNumber numberWithInt:0];
    for (NSInteger i = 0; i < initFigureArray.count; i ++) {
        if ([initFigureArray[i] isEqualToNumber:zero]) {
            [initFigureArray removeObjectAtIndex:i];
            [initFigureArray addObject:zero];
        }
    }
    return initFigureArray.copy;
}

void gameOfLife(void) {
    /*
     设：
         状态0： 死细胞转为死细胞
         状态1： 活细胞转为活细胞
         状态2： 活细胞转为死细胞
         状态3： 死细胞转为活细胞
     
     * 判断某点在本轮变化前是否是死亡状态
     * @param obj
     * @return
     
    
     * 判断某点在本轮变化后是否是死亡状态
     * @param obj
     * @return
     
     //考察所有的点，变化其生命状态
     
     //根据变换后的存活状态，重新赋予每个点的生死情况
     
     */
}


float mySqrt(float x)
{
    float xhalf = 0.5f * x;
    int i = *(int*)&x;
    i = 0x5f375a86 - (i>>1);
    x = *(float*)&i;
    x = x*(1.5f-xhalf*x*x);
    x = x*(1.5f-xhalf*x*x);
    x = x*(1.5f-xhalf*x*x);
    
    return 1/x;
}

float myPow(float a,int b)
{
    float r=a;
    if(b>0) {
        while(--b)
            r*=a;
        }
        else if(b<0) {
            while(++b) r*=a;
            r=1.0/r;
            }
        else r=0;
    return r;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"%@", productArray(@[@2, @3, @4, @5]));
//        NSLog(@"%@", numberFirst([@[@0, @1, @0, @12, @3] mutableCopy]));
        NSLog(@"%f", myPow(2, -6));
    }
    return 0;
}
