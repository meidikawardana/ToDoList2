//
//  ContactsTableViewController.m
//  ToDoList2
//
//  Created by Meidika Wardana on 4/14/15.
//  Copyright (c) 2015 BEI5000. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "CustomCell.h"
#import "AddToDoItemViewController.h"

@interface ContactsTableViewController ()
    @property NSMutableArray *toDoItems;
    @property (nonatomic, strong) NSArray *contactsArray;
    @property (nonatomic, strong) NSDictionary *contact;
@end

@implementation ContactsTableViewController

@synthesize contactsArray,contact;

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
//    AddToDoItemViewController *source = [segue sourceViewController];
//    ToDoItem *item = source.toDoItem;
//    if (item != nil) {
//        [self.toDoItems addObject:item];
//        [self.tableView reloadData];
//    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"contacts" ofType:@"plist"];
    contactsArray = [NSArray arrayWithContentsOfFile:path];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [contactsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"ListPrototypeCell";
    CustomCell *customCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    contact = contactsArray[indexPath.row];
    
    NSString *firstName = contact[@"firstName"];
    NSString *lastName = contact[@"lastName"];
    NSString *imageName = contact[@"imageName"];
    
    UIImage *image = [UIImage imageNamed:imageName];
    
    customCell.customFirstNameLabel.text = firstName;
    customCell.customLastNameLabel.text = lastName;
    customCell.customImageView.image = image;
    
    
    return customCell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
