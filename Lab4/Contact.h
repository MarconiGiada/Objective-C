//
//  Contact.h
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *email;
-(instancetype)initWithname:(NSString*)name andemail:(NSString*)email;

@end
