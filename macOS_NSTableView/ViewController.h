//
//  ViewController.h
//  tbView
//
//  Created by Do Trinh on 2021/07/26.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *leftTableView;

@end

