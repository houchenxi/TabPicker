//
//  DatePickerViewController.h
//  TabPicker
//
//  Created by houchenxi  on 15-1-3.
//  Copyright (c) 2015年 haotwo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;


- (IBAction)buttonPressed:(id)sender;


@end
