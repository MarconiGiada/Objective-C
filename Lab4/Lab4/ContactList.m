//
//  ContactList.m
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype) init{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void) addContact: (Contact *) newContact {
    [_contactList addObject: newContact];
}
- (NSString *) description
{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (Contact *contact in _contactList) {
        NSString *contactStr = [NSString stringWithFormat:@"%d: %@", count,  contact];
        count++;
        [result appendString:contactStr];
    }
    return result;
}
  
- (Contact *) findContact: (NSString *) checkword{
    for(Contact *contact in _contactList){
        if([[contact name] isEqualToString:checkword] || [[contact email] isEqualToString:checkword]){
            return contact;
        }
    }
    return nil;
}

- (BOOL)findDuplicate:(NSString *) sameEmail{
    for (Contact *contact in _contactList) {
        if([[contact email] isEqualToString:sameEmail]){
            return TRUE;
        }
    }
    return FALSE;
}


@end

