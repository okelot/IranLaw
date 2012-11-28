//
//  lawShow.h
//  madaniLawFinal
//
//  Created by Nima on 11/22/12.
//  Copyright (c) 2012 nima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lawShow : UIViewController
{
    NSString* text;
}
@property (weak, nonatomic) IBOutlet UITextView *textLaw;
-(void)initWithLawNum:(int)lawNum lawText:(NSString*)lawText;
- (IBAction)Done:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *numLaw;

@end
