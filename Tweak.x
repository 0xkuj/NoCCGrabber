
#import <Foundation/Foundation.h>

@interface CSTeachableMomentsContainerViewController
- (void)_setControlCenterTutorsHidden:(BOOL)arg1;
@end

%group iOS15
%hook CSTeachableMomentsContainerViewController
- (void)viewDidLoad {
	%orig;
	[self _setControlCenterTutorsHidden:YES];
}
%end
%end

%group iOS16
%hook CSTeachableMomentsContainerView
- (void)_addControlCenterTutors {
	return;
}
%end
%end

%ctor {
	if (@available(iOS 16.0, *)) {
		%init(iOS16);
	} else {
		%init(iOS15);
	}
}