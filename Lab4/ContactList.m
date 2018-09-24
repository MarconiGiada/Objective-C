//
//  ContactList.m
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
-(instancetype)init{
    self =[super init];
    if(self){
        _contactList=[NSMutableArray new];
        
    }
    return self;
}

-(void)addcontact : (Contact *)newcontact{
    [_contactList addObject: newcontact];
}

-(NSString *)description
{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (Contact *contact in _contactList){
        NSString *contactStr = [NSString stringWithFormat:@"@%d:%@/n",count, contact];
        //NSLog(@"%d: %@",count, contact);
        count++;
        [result appendString:contactStr];
    }
    return result;
}


@end

