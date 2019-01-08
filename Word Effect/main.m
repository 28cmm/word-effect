//
//  main.m
//  Word Effect
//
//  Created by Yilei Huang on 2019-01-07.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        char inputNum[255];
        
//upper
         int i = 0;
        
        while(i == 0){
            NSLog(@"Input a number from 1-8 ,and 9 to exit to modify the string:");
            fgets(inputNum, 255, stdin);
            NSString * num1 = [NSString stringWithUTF8String:inputNum];
            NSNumber * num =  @([num1 intValue]);
            if([num isEqual: @9 ]){
                NSLog(@"goodbye");
                break;
                
            }
            NSLog(@"Input string to modify");
            fgets(inputChars, 255, stdin);
            NSString * inputChar =  [NSString  stringWithUTF8String:inputChars];
            //upper
            if([num isEqual: @1]){
                NSString* upper =[inputChar uppercaseString];
                NSLog(@"Your uppercase's string is %@\n", upper);
                //lower
            }else if([num isEqual: @2]){
                NSLog(@"Your lowercase's string is %@\n",[inputChar lowercaseString]);
                
            }
            else if([num isEqual:@3]){
                NSNumber *numCheck = @([inputChar intValue]);
                if(numCheck){
                    NSLog(@"successful, your result input is %@", numCheck);
                }else{
                    NSLog(@"this is not a number");
                }
            }else if([num isEqual: @4]){
                inputChar =[inputChar stringByAppendingString:@",eh?"];
                NSLog(@"Your result string is %@\n", inputChar);
        // respond
            }else if([num isEqual: @5]){
                if([inputChar hasSuffix:@"!"]){
                    NSLog(@"Whoa, calm down!");
                }else if([inputChar hasSuffix:@"?"]){
                    NSLog(@"I don't know");
                }
                    
                
        // de-space-it
            }else if([num isEqual: @6]){
                NSString *new =[inputChar stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"Your result string is %@\n", new);
        // letter count
            }else if([num isEqual:@7]){
                //NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString: inputChar];
                //NSNumber* j = [myCharSet count];
                NSNumber * j = @(inputChar.length-1);
                NSLog(@"there is %@ in the string", j);
        //emoji
            }else if([num isEqual:@8]){
                NSString * result = @"";
                NSNumber * j = @(inputChar.length-1);
                for(int i =0;i <[j intValue];i++){
                    result = [result stringByAppendingString:@"🏸"];
                }
                NSLog(@"%@",result);
            }
            
        }
        

        
    }
    return 0;
}
