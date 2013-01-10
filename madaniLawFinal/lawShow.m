//
//  lawShow.m
//  madaniLawFinal
//
//  Created by Nima on 11/22/12.
//  Copyright (c) 2012 nima. All rights reserved.
//

#import "lawShow.h"

@interface lawShow ()

@end

@implementation lawShow

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.textLaw setText:text];
    [self.textLaw setTextAlignment:NSTextAlignmentRight];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)initWithLawNum:(int)lawNum lawText:(NSString*)lawText
{
    [self.textLaw setText:lawText];
    NSString* str = [[NSString alloc]initWithFormat:@"%d",lawNum ];
    text = lawText;
    [self.textLaw reloadInputViews];
}

- (IBAction)Done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
