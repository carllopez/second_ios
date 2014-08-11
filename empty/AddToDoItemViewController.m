//
//  AddToDoItemViewController.m
//  empty
//
//  Created by Carlos Lopez on 7/29/14.
//  Copyright (c) 2014 Neat Coders. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *itemTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation AddToDoItemViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) {
        return;
    }
    if (self.itemTextField.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.itemTextField.text;
        self.toDoItem.completed = NO;
    }
}

@end
