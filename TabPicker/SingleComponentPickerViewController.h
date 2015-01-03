//
//  SingleComponentPickerViewController.h
//  TabPicker
//
//  Created by houchenxi  on 15-1-3.
//  Copyright (c) 2015年 haotwo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleComponentPickerViewController : UIViewController
    <UIPickerViewDelegate, UIPickerViewDataSource>


@property (weak, nonatomic) IBOutlet UIPickerView *singlePicker;

@property (strong, nonatomic) NSArray* content;

- (IBAction)buttonPressed:(id)sender;

@end
