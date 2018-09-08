//
//  main.m
//  Lab4
//
//  Created by Giada Marconi on 2018-09-07.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc] init ];
        while(true) {
            NSString *menu = @"What would you like to do next?\n new - Create a new contact\n list - List all contacts\n show -Display the details of a contact\n history - Print last 3 command\n  quit - Exit Application\n > _";
            NSString *option = [InputHandler getUserInputWithLength: 20 withPrompt: menu];
            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]){
                // 1. get user input for name and email
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name: "];
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email: "];
                
                // 2. create a contact object based on the userinput
                Contact *newContact = [[Contact alloc] initWithName: name andEmail: email];
                // 3. add the contact to ContactList's contactList
                [contactList addContact: newContact];
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"%@", contactList);
            }
        }
//  BONUS    FEATURE
        // 1. Show: display the details of a contact with the index entered  ----> ContactList
        // 2. Find: search throught the names of the contact and print the contact detail of that   -----> ContactList
        // 3. Output an error message if will be input the same email of another contact   -----> InputHandler
        // 4. Adding more tha one phone number (1. cellphone 2. homephone 3.workphone..)  -----> InputHandler
        // 5. History: print last 3 command user entered     -----> InputHandler
        
    }
    return 0;
}
