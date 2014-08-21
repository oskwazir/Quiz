//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic,weak) IBOutlet UILabel *questionLabel;
@property (nonatomic,weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

-(instancetype) initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil{
    
    //call super class init method
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        self.questions = @[@"Who is the leader of the Rebel Alliance",
                           @"What is the code name of Hoth Base",
                           @"It's a ...?"];
        
        self.answers = @[@"Mon Mothma",
                         @"Echo Base",
                         @"Trap"];
       
    }
    
    return self;

}

-(IBAction)showQuestion:(id)sender{
    
    //go to the next question
    self.currentQuestionIndex++;
    
    //if we reached the last question go back to the first question
    if(self.currentQuestionIndex == self.questions.count){
        self.currentQuestionIndex = 0;
    }
    
    //get the current question
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //set the question to the question label
    self.questionLabel.text = question;
    
    //reset the answer label's text
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender{
    //get the answer to the current question
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //set the answer to the answer label
    self.answerLabel.text = answer;
}

@end
