//
//  main.m
//  Lab2
//
//  Created by Giada Marconi on 2018-09-05.
//  Copyright © 2018 Giada Marconi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // Student student1 = new Student (1, "Derrik", "")
//        Student *student1 = [[Student alloc] initWithId: 1 andName: @"Derrick" andCountry:@"Canada"];
//
//       NSLog(@"%d",  [student1 identification]);
//        [student1 setIdentification:10];
//        NSLog(@"%d", [student1 identification]);
//
//        [student1 name];
//        [student1 setName:@"Burger"];
//
//        [student1 country];
//        [student1 setCountry:@"Canada"];
//    }
//    return 0;
        
        Box *box1 = [[Box alloc] initWithWidth:10  andHeight: 10 andLength:10];
        NSLog(@"%.2f" , [box1 volume]);
        Box *box2 = [[Box alloc] initWithWidth:5  andHeight: 5 andLength:5];
        NSLog(@"%2f",  [box1 insideBox:[box1 volume] andBox2:[box2 volume]]);
        
    }
}
