//
//  ViewController.m
//  DemoSVN
//
//  Created by MTCHNDT on 23/11/16.
//  Copyright © 2016 MTPL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *txtDemo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = [MWKNumberRowInputAccessoryViewFactory defaultFramePortrait];
    self.numberRow = [MWKNumberRowInputAccessoryViewFactory numberRowInputAccessoryViewWithFrame:frame inputViewStyle:UIInputViewStyleKeyboard];
    self.numberRow.keyboardAppearance = UIKeyboardAppearanceDefault;
    self.txtDemo.keyboardAppearance = UIKeyboardAppearanceDefault;
    self.txtDemo.inputAccessoryView = (UIView*)self.numberRow;
    self.numberRow.delegate = self;
}

#pragma mark - MWKNumberRowInputAccessoryViewDelegate

- (void)inputAccessory:(MWKNumberRowInputAccessoryView*)aInputAccessory didGenerateValue:(id)aValue
{
    {
        NSString *currentText = self.txtDemo.text;
        NSString *newText = [NSString stringWithFormat:@"%@%@", currentText, aValue];
        self.txtDemo.text = newText;
        
    }
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
