//
//  SingleComponentPickerViewController.m
//  TabPicker
//
//  Created by houchenxi  on 15-1-3.
//  Copyright (c) 2015年 haotwo. All rights reserved.
//

#import "SingleComponentPickerViewController.h"

@interface SingleComponentPickerViewController ()

@end

@implementation SingleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 选取器的数据数组
    // NSArray的赋值
    self.content =
    @[
      @"学前班",
      @"小学",
      @"初中",
      @"高中",
      @"大学",
      @"研究生"
      ];
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
    
    // 获得0这个下标的组件中选取的行的下标号
    NSInteger rowSelectedIndex = [self.singlePicker selectedRowInComponent:0];
    
    // 获得选取的文本，后面用它显示
    NSString* textSelected = self.content[rowSelectedIndex];
    
    // 用上面选中项的文本构造一个标题
    NSString* title = [
        [NSString alloc]
            initWithFormat:@"你选择了[%@]", textSelected
         
    ];
    
    
    // 弹出模态的警告对话框，显示选中文本的相关信息
    [
     [[UIAlertView alloc]
          initWithTitle:title
              message:@"欢迎选择"
              delegate:nil
              cancelButtonTitle:@"关闭"
              otherButtonTitles:nil
      ]
     show];
}

#pragma mark - 组件数
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

#pragma mark - 组件中的行数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.content count];
}

#pragma mark - 选择器中文字选项的适配器 这是Delegate协议的接口
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.content[row];
}


@end
