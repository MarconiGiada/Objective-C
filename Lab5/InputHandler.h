//
//  InputHandler.h
//  Lab5
//
//  Created by Giada Marconi on 2018-09-10.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+(NSString *)getUserInputWithLength:(int) maxLength widthPrompt : (NSString *)prompt;

@end
