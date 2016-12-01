//
//  ViewController.h
//  DemoSVN
//
//  Created by MTCHNDT on 23/11/16.
//  Copyright © 2016 MTPL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MWKNumberRowInputAccessory/MWKNumberRowInputAccessory.h>
@interface ViewController : UIViewController<MWKInputAccessoryViewDelegate,UITextFieldDelegate>
@property (nonatomic, strong) id<MWKInputAccessoryView> numberRow;

@end

