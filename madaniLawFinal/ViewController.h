//
//  ViewController.h
//  madaniLawFinal
//
//  Created by Nima on 11/22/12.
//  Copyright (c) 2012 nima. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMDatabase.h"
#import "lawShow.h"
@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray* acts;
    lawShow* lawShowController;

}
@end
