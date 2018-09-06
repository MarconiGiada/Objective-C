//
//  Student.m
//  Lab2
//
//  Created by Giada Marconi on 2018-09-05.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Student.h"
// Class: use-defined type (template)
// - states (attributes) (public, private)
// - methods (behaviours)

@interface Student ()
// define private properties
// define private methods

@end

@implementation Student {
    // define private instance variables

}

// implement methods
-  (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry:(NSString *) country {
    self = [super init];
    if (self) {
        _identification = identification;
        _name = name;
        _country = country;
    }
    return self;
}

@end
