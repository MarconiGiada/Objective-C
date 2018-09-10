//
//  Contact.m
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype) initWithName: (NSString *) name andEmail: (NSString *) email
{
    self = [super init];
    if(self) {
        _name = name;
        _email = email;
    }
    return self;
}
-(NSString *) description
{
    return [NSString stringWithFormat:@"<%@> ( %@) ", self.name, self.email];
}
@end
