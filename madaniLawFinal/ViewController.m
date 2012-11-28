//
//  ViewController.m
//  madaniLawFinal
//
//  Created by Nima on 11/22/12.
//  Copyright (c) 2012 nima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    acts=[[NSMutableArray alloc] init];
    FMDatabase *db = [FMDatabase databaseWithPath:[[NSBundle mainBundle] pathForResource:@"madaniDB" ofType:@"sqlite"]];
    if (![db open]) {
        NSLog(@"error");
        
    }
    FMResultSet *s = [db executeQuery:@"SELECT * FROM main"];
   
    while ([s next]) {
        
        //retrieve values for each record
        //NSLog([s stringForColumn:@"madde_text"]);
        [acts insertObject:[s stringForColumn:@"madde_text"] atIndex:[s intForColumn:@"madde_num"]];
        
    }
    lawShowController = [[lawShow alloc] initWithNibName:@"lawShow" bundle:nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return [acts count];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    
    cell.textLabel.text=[acts objectAtIndex:indexPath.row];
    cell.textLabel.textAlignment=UITextAlignmentRight;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [lawShowController initWithLawNum:indexPath.row lawText:[acts objectAtIndex:indexPath.row]];
    NSLog([acts objectAtIndex:indexPath.row]);
    [self presentModalViewController:lawShowController animated:YES];
}

@end
