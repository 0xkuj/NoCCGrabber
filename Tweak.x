
#import <Foundation/Foundation.h>

@interface CSTeachableMomentsContainerViewController
- (void)_setControlCenterTutorsHidden:(BOOL)arg1;
@end

%hook CSTeachableMomentsContainerViewController
- (void)viewDidLoad {
	%orig;
	[self _setControlCenterTutorsHidden:YES];
}
%end