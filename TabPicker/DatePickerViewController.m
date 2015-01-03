//
//  DatePickerViewController.m
//  TabPicker
//
//  Created by houchenxi  on 15-1-3.
//  Copyright (c) 2015年 haotwo. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonPressed:(id)sender {
    
    
    NSDate* dateSelect = [self.datePicker date];
    
    NSString* msg = [[NSString alloc] initWithFormat:
                     @"你选择的日期是 %@", dateSelect];

    // 显示一条提示消息
    [
         [
          [UIAlertView alloc]
             initWithTitle:@"你选择了日期"
                 message:msg
                 delegate:nil
                 cancelButtonTitle:@"关闭"
                 otherButtonTitles:nil]
    show];
}



@end
