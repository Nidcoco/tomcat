//
//  ViewController.m
//  TomCat
//
//  Created by 李俊宇 on 2018/4/15.
//  Copyright © 2018年 李俊宇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *UIImageViewCat;

- (IBAction)Eat;
- (IBAction)Fart;
- (IBAction)Drink;
- (IBAction)Scratch;
- (IBAction)Pie;
- (IBAction)Cymbal;
- (IBAction)Knock;
- (IBAction)Angry;
- (IBAction)Stomach;
- (IBAction)FootRight;
- (IBAction)FootLeft;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)action:(NSString *) imagename  andCount:(int) count{
    if(self.UIImageViewCat.isAnimating){
        return;
    }
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < count; i ++) {
        NSString *name = [NSString stringWithFormat:@"%@_%02d.jpg",imagename,i];
        NSString *path = [[NSBundle mainBundle]pathForResource:name ofType:nil];
        UIImage *iamge = [UIImage imageWithContentsOfFile:path];
        [array addObject:iamge];
    }
    

    self.UIImageViewCat.animationImages = array;
    self.UIImageViewCat.animationDuration = array.count * 0.1;
    self.UIImageViewCat.animationRepeatCount = 1;
    [self.UIImageViewCat startAnimating];
    
    int delay = array.count*0.1;
    //清空图片
    [self.UIImageViewCat performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:delay];
    
    
}




- (IBAction)Eat {
     [self action:@"eat" andCount:40];
}

- (IBAction)Fart {
    [self action:@"fart" andCount:28];

}

- (IBAction)Drink {
    [self action:@"drink" andCount:81];
}

- (IBAction)Scratch {
    [self action:@"scratch" andCount:56];
}

- (IBAction)Pie {
     [self action:@"pie" andCount:24];
}

- (IBAction)Cymbal {
    [self action:@"cymbal" andCount:13];
}

- (IBAction)Knock {
    [self action:@"knockout" andCount:81];
}

- (IBAction)Angry {
    [self action:@"angry" andCount:26];

}

- (IBAction)Stomach {
    [self action:@"stomach" andCount:34];
}

- (IBAction)FootRight {
    [self action:@"footRight" andCount:30];
}

- (IBAction)FootLeft {
    [self action:@"footLeft" andCount:30];
}
@end
