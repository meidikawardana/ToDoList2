//
//  AddToDoItemViewController.m
//  ToDoList2
//
//  Created by Meidika Wardana on 4/13/15.
//  Copyright (c) 2015 BEI5000. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
//@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation AddToDoItemViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton) return;
    if (self.textView.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textView.text;
        self.toDoItem.completed = NO;
    }
}


@end
