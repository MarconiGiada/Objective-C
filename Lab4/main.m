//
//  main.m
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactlist=[[ContactList alloc]init];
        
        while(true){
            
            NSString *menu= @"What would you like to do next?  new list?";
            NSString *option =[InputHandler getUserInputWithLength:20 withPrompt:menu];
            if([option isEqualToString:@"quit"]){
                break;
            }else if ([option isEqualToString:@"new"]){
                //1. get user input for name and email
                NSString *name=[InputHandler getUserInputWithLength:255 withPrompt:@"enter the name"];
                NSString *email=[InputHandler getUserInputWithLength:255 withPrompt:@"enter the email"];
                
                //2 create a contact object based on the user
                Contact *newContact = [[Contact alloc]initWithname:name andemail:email];
                
                // 3 add the contact to contactlist contactlist
                [contactlist addcontact:newContact];
                
                
            }else if ([option isEqualToString:@"list"]){
                NSLog(@"%@",contactlist);
            }
            
            
        }
    }
    return 0;
}
//  BONUS    FEATURE
        // MISSING!!! 1. Show: display the details of a contact with the index entered  ----> ContactList
        // 2. Find: search throught the names of the contact and print the contact detail of that   -----> ContactList
        // 3. Output an error message if will be input the same email of another contact   -----> InputHandler
        // MISSING!!!  4. Adding more tha one phone number (1. cellphone 2. homephone 3.workphone..)  -----> InputHandler
        // 5. History: print last 3 command user entered     -----> InputHandler

