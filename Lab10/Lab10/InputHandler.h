//
//  InputHandler.h
//  Lab10
//
//  Created by Giada Marconi on 2018-09-14.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+ (NSString *) getUserInputWithLength: (int) maxLength widthPrompt: (NSString* ) prompt;

@end
