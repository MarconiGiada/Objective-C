//
//  ContactList.h
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
@property(nonatomic,strong) NSMutableArray *contactList;

-(void)addcontact : (Contact *)newcontact;

@end
