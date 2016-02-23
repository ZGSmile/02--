//
//  DMPasscodeInternalField.m
//  Pods
//
//  Created by Dylan Marriott on 20/09/14.
//
//

#import "DMPasscodeInternalField.h"

@implementation DMPasscodeInternalField

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        
        
        _emptyIndicator = [[UIView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height / 2 - 1, self.bounds.size.width, 40)];
        _emptyIndicator.backgroundColor = [UIColor whiteColor];
        
        [self addSubview:_emptyIndicator];
        
        UILabel *label01 = [[UILabel alloc] init];
        label01.frame = CGRectMake(0, 0, self.frame.size.width, 1);
        label01.backgroundColor = [UIColor grayColor];
        [_emptyIndicator addSubview:label01];
        
        UILabel *label02 = [[UILabel alloc] init];
        label02.frame = CGRectMake(0, 0, 1, self.frame.size.height);
        label02.backgroundColor = [UIColor grayColor];
        [_emptyIndicator addSubview:label02];
        
        UILabel *label03 = [[UILabel alloc] init];
        label03.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, 1);
        label03.backgroundColor = [UIColor grayColor];
        [_emptyIndicator addSubview:label03];
        
        UILabel *label04 = [[UILabel alloc] init];
        label04.frame = CGRectMake(40, 0, 1, self.frame.size.height);
        label04.backgroundColor = [UIColor grayColor];
        [_emptyIndicator addSubview:label04];
        
        
        _filledIndicator = [[UIView alloc] initWithFrame:CGRectMake(self.bounds.size.width / 2 - 6, self.bounds.size.height / 2 +15, 12, 12)];
        _filledIndicator.backgroundColor = [UIColor grayColor];
        _filledIndicator.layer.cornerRadius = 6;
        _filledIndicator.alpha = 0;
        [self addSubview:_filledIndicator];
    }
    return self;
}

- (void)setText:(NSString *)text {
//    _emptyIndicator.alpha = text.length > 0 ? 0.0f : 1.0f;
    _filledIndicator.alpha = text.length > 0 ? 1.0f : 0.0f;
}

@end

