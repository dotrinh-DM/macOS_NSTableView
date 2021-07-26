//
//  ViewController.m
//  tbView
//
//  Created by Do Trinh on 2021/07/26.
//

#import "ViewController.h"

@implementation ViewController

NSArray *nameArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    nameArray = [NSArray array];
    for (int i = 0; i < 100; i++) {
        nameArray = [nameArray arrayByAddingObject:[NSString stringWithFormat:@"macOS: %d", i]];
    }
    _leftTableView.delegate = self;
    _leftTableView.dataSource = self;
    
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *result = [tableView makeViewWithIdentifier:@"myCellID" owner:self];
    result.textField.stringValue = nameArray[row];
    return result;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    return 40.0;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return nameArray.count;
}

//- (void)tableViewSelectionDidChange:(NSNotification *)notification {
//    NSLog(@"testt %d",_leftTableView.selectedRow);
//}

-(void)tableViewSelectionDidChange:(NSNotification *)notification{
    NSLog(@"%ld",(long)[[notification object] selectedRow]);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
